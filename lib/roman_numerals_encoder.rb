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
      if number / num_key >= 1
        result.concat(letter)
        number -= num_key
      end
    end

    result
  end
end
