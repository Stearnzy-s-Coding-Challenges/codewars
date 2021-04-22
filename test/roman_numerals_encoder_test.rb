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

  def test_converts_500_to_D
    encoder = RomanNumeralsEncoder.new
    number = 500

    assert_equal 'D', encoder.solution(number)
  end

  def test_converts_1500_to_MD
    encoder = RomanNumeralsEncoder.new
    number = 1500

    assert_equal 'MD', encoder.solution(number)
  end

  def test_converts_100_to_C
    encoder = RomanNumeralsEncoder.new
    number = 100

    assert_equal 'C', encoder.solution(number)
  end

  def test_converts_600_to_DC
    encoder = RomanNumeralsEncoder.new
    number = 600

    assert_equal 'DC', encoder.solution(number)
  end

  def test_converts_50_to_L
    encoder = RomanNumeralsEncoder.new
    number = 50

    assert_equal 'L', encoder.solution(number)
  end

  def test_converts_150_to_CL
    encoder = RomanNumeralsEncoder.new
    number = 150

    assert_equal 'CL', encoder.solution(number)
  end

  def test_converts_1050_to_ML
    encoder = RomanNumeralsEncoder.new
    number = 1050

    assert_equal 'ML', encoder.solution(number)
  end

  def test_converts_10_to_X
    encoder = RomanNumeralsEncoder.new
    number = 10

    assert_equal 'X', encoder.solution(number)
  end

  def test_converts_60_to_LX
    encoder = RomanNumeralsEncoder.new
    number = 60

    assert_equal 'LX', encoder.solution(number)
  end

  def test_converts_1510_to_MDX
    encoder = RomanNumeralsEncoder.new
    number = 1510

    assert_equal 'MDX', encoder.solution(number)
  end

  def test_converts_5_to_V
    encoder = RomanNumeralsEncoder.new
    number = 5

    assert_equal 'V', encoder.solution(number)
  end

  def test_converts_15_to_XV
    encoder = RomanNumeralsEncoder.new
    number = 15

    assert_equal 'XV', encoder.solution(number)
  end

  def test_converts_675_to_DCLXXV
    encoder = RomanNumeralsEncoder.new
    number = 675

    assert_equal 'DCLXXV', encoder.solution(number)
  end
end
