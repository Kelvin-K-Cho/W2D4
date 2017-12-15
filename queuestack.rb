require_relative "mystack"

class StackQueue < MyStack

  def enqueue(value)
    if @largest == nil || @largest < value
      @largest = value
    end
    if @smallest == nil || @smallest > value
      @smallest = value
    end
    @store.unshift(value)
  end

  def dequeue
    @store.shift
    @largest = @store.max
    @smallest = @store.min
  end
end
