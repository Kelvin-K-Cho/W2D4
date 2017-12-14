def first_anagram?(word1, word2)
  array1 = word1.chars.permutation.to_a
  array2 = word2.chars.permutation.to_a
  array1.each do |array_one|
    array2.each do |array_two|
      return true if array_one == array_two
    end
  end
  false
end

def second_anagram?(word1, word2)
  array1 = word1.chars
  array2 = word2.chars
  array1.each do |el|
    if array2.index(el).nil?
      return false
    else
      idx = array2.index(el)
      array2.delete_at(idx)
    end
  end
  true
end


def third_ana(word1, word2)
  word1.chars.sort == word2.chars.sort
end

def fourth_ana(word1, word2)
  char_hsh = Hash.new(0)

  array1 = word1.chars
  array2 = word2.chars

  array1.each do |ele|
    char_hsh[ele] += 1
  end
  array2.each do |ele|
    char_hsh[ele] -= 1
  end

  char_hsh.values.all? { |ele| ele == 0}
end
