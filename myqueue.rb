class MyQueue

  def initialize
    @store = []
  end

  def empty?
    @store.empty?
  end

  def peek
    @store.last
  end

  def dequeue
    @store.pop
  end

  def enqueue(value)
    @store.unshift(value)
  end

  def size
    @store.length
  end

end
