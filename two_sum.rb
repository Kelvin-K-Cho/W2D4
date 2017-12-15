def bad_two_sum?(array, target)
  i = 0
  while i < array.length - 1
    j = i + 1
    while j < array.length
      return true if array[i] + array[j] == target
      j += 1
    end
    i += 1
  end
  false
end
# O(n ** 2) == time
# O(1) == space

def okay_two_sum?(array, target)
  array = array.sort
  i = 0
  j = array.length - 1
  while i < j
    if ((array[i] + array[j]) <=> target) == 0
      return true
    elsif ((array[i] + array[j]) <=> target) == -1
      i += 1
    else
      j -= 1
    end
  end
  false
end

# O(n) == space
# O(n) == time

# [1, 5, 7, 15, 20], 22
# 1 + 20? 21 <=> 22, -1
# 5 + 20? 25 <=> 22, 1
# 5 + 15? 20 <=> 22, -1
# 7 + 15? 20 <=> 20, 0

def two_sum?(array, target)
  hash_num = Hash.new

  array.each do |el|
    diff = target - el
    return true if hash_num[diff] == true
    hash_num[el] = true
  end
  false
end
# O(n) == space
# O(n) == time



def four_sum?(array, target)
  combos = array.permutation(4).to_a

  combos.each do |subarr|
    return true if subarr.inject { |x,y| x + y} == target 
  end

end
