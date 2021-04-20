class Scramblies
  def scramble(s1, s2)
    return false if s1.length < s2.length

    s1_split = s1.split('')
    s2_split = s2.split('')

    available_letters = s1_split.each_with_object(Hash.new(0)) do |letter, acc|
      acc[letter] += 1
    end

    s2_split.each do |letter|
      if available_letters.has_key?(letter)
        available_letters[letter] -= 1
        available_letters.delete(letter) if available_letters[letter] == 0
      else
        return false
      end
    end

    true
  end
end
