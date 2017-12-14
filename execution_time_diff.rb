list = [ 0, 3, 5, 4, -5 ,10 ,1 ,90 ]

def my_min(array)
  array.each do |el|
    lowest = true
    array.each do |elem|
      next if el == elem
      if elem < el
        lowest = false
      end
    end
    return el if lowest
  end
end

my_min(list)



def my_min2(array)
  lowest = array.first

  array[1..-1].each do |el|
    if el < lowest
      lowest = el
    end
  end
  lowest
end


def sub_sum(array)
  sub_arr = []

  i = 0
  while i < array.length - 1
    j = i + 1
    while j < array.length
      sub_arr << array[i..j]
      j+= 1
    end
    i += 1
  end
  p sub_arr
    sum_arr = []
    sub_arr.each do |el|
      sum_arr << el.inject { |x, y| x + y}
    end
    sum_arr.max
end


def sub_sum2(array)
  record = array[0]
  current = array[0]
  return array.max if array.all? { |x| x < 0 }
  array[1..-1].each do |ele|
    current = 0 if current < 0
    current += ele
    record = current if current > record
  end
  record
end
