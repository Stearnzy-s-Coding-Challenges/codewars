gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/directions_reduction'

class DirectionsReductionTest < Minitest::Test
  def test_it_exists
    reducer = DirectionsReduction.new
    assert_instance_of DirectionsReduction, reducer
  end

end
