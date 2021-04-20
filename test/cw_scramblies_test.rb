gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/cw_scramblies'

class ScrambliesTest < Minitest::Test
  def test_it_exists
    codex = Scramblies.new
    assert_instance_of Scramblies, codex
  end

  def test_returns_false_if_first_string_is_smaller_than_second
    codex = Scramblies.new
    s1 = "ckg"
    s2 = "world"

    assert_equal false, codex.scramble(s1, s2)
  end

  def test_returns_false_if_first_string_does_not_contain_letters_from_second_string
    codex = Scramblies.new
    s1 = "lmiceln"
    s2 = "rice"

    assert_equal false, codex.scramble(s1, s2)
  end

  def test_returns_true_if_first_string_contains_all_letters_in_second_string
    codex = Scramblies.new
    s1 = "liercln"
    s2 = "rice"

    assert codex.scramble(s1, s2)
  end

  def test_can_account_for_s2_with_duplicate_letters
    codex = Scramblies.new
    s1 = "xeltpr"
    s2 = "tree"

    assert_equal false, codex.scramble(s1, s2)
  end
end
