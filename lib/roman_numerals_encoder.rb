class RomanNumeralsEncoder
  NUMERALS = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
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
