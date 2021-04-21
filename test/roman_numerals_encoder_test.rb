gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/roman_numerals_encoder'

class RomanNumeralsEncoderTest < Minitest::Test
  def test_it_exists
    encoder = RomanNumeralsEncoder.new
    assert_instance_of RomanNumeralsEncoder, encoder
  end
end
