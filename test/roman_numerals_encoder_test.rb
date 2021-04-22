gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/roman_numerals_encoder'

class RomanNumeralsEncoderTest < Minitest::Test
  def test_it_exists
    encoder = RomanNumeralsEncoder.new
    assert_instance_of RomanNumeralsEncoder, encoder
  end

  def test_converts_1000_to_M
    encoder = RomanNumeralsEncoder.new
    number = 1000

    assert_equal 'M', encoder.solution(number)
  end

  def test_converts_2000_to_MM
    encoder = RomanNumeralsEncoder.new
    number = 2000

    assert_equal 'MM', encoder.solution(number)
  end
end
