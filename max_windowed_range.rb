require "byebug"
require_relative "minmaxstackqueue"

def windowed_max_range(array, size)
  max_range = nil
  i = 0
  while i <= array.length - size
    j = i + (size - 1)
    value = array[i..j].max - array[i..j].min

    if max_range == nil || max_range < value
      max_range = value
    end
    i += 1
  end
  max_range
end

def optimized_windowed_max_range(array, size)
  max_range = nil
  stack_queue = MinMaxStackQueue.new
  array[0...size].each do |el|
    stack_queue.enqueue(el)
  end
  i = 0
  while i <= array.length - size
    range = stack_queue.max - stack_queue.min
    if max_range == nil
      max_range = range
    end
    if range > max_range
      max_range = range
    end
    stack_queue.dequeue
    unless array[(size+i)].nil?
      stack_queue.push(array[size + i])
    end
    i += 1
  end
  max_range
end

if __FILE__ == $PROGRAM_NAME
  p optimized_windowed_max_range([1,2,3,5], 3)
  # p max_windowed_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
  # p max_windowed_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
  # p max_windowed_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
  # p max_windowed_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8
end
