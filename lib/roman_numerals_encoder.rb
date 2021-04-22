class RomanNumeralsEncoder
  NUMERALS = {
    1000 => 'M',
    500 => 'D',
    100 => 'C',
    50 => 'L',
    10 => 'X',
    5 => 'V',
    1 => 'I'
  }

  def solution(number)
    result = ''

    NUMERALS.each do |num_key, letter|
      count = number / num_key
        if count >= 1
        count.times do
          result.concat(letter)
          number -= num_key
        end
      end
    end

    result
  end
end
