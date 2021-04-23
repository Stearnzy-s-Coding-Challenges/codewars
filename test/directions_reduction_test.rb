gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/directions_reduction'

class DirectionsReductionTest < Minitest::Test
  def test_it_exists
    reducer = DirectionsReduction.new
    assert_instance_of DirectionsReduction, reducer
  end

  def test_it_can_return_one_direction
    reducer = DirectionsReduction.new
    directions = ['EAST']

    assert_equal ['EAST'], reducer.dirReduc(directions)
  end

  def test_it_cancels_out_simple_east_west
    reducer = DirectionsReduction.new
    directions = %w[EAST WEST]

    assert_equal [], reducer.dirReduc(directions)
  end

  def test_it_cancels_out_simple_north_south
    reducer = DirectionsReduction.new
    directions = %w[NORTH SOUTH]

    assert_equal [], reducer.dirReduc(directions)
  end

  def test_it_cancels_out_more_complex_north_south
    reducer = DirectionsReduction.new
    directions = %w[NORTH SOUTH SOUTH SOUTH NORTH NORTH SOUTH NORTH]

    assert_equal [], reducer.dirReduc(directions)
  end

  def test_it_cancels_out_simple_combination
    reducer = DirectionsReduction.new
    directions = %w[NORTH EAST SOUTH WEST]

    assert_equal %w[NORTH EAST SOUTH WEST], reducer.dirReduc(directions)
  end

  def test_it_cancels_out_complex_combination
    reducer = DirectionsReduction.new
    directions = %w[NORTH SOUTH SOUTH EAST WEST NORTH WEST]

    assert_equal ['WEST'], reducer.dirReduc(directions)
  end
end
