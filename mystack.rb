class MyStack
  def initialize
    @store = []
    @largest = nil
    @smallest = nil
  end

  def empty?
    @store.empty?
  end

  def peek
    @store.last
  end

  def size
    @store.length
  end

  def pop
    @store.pop
    @largest = @store.max
    @smallest = @store.min
  end

  def push(value)
    if @largest == nil || @largest < value
      @largest = value
    end
    if @smallest == nil || @smallest > value
      @smallest = value
    end
    @store.push(value)
  end

  def max
    @largest
  end

  def min
    @smallest
  end

end
