require 'minitest/autorun'
require_relative 'trader'

class TestDayTrader < Minitest::Test
  def test_normal_case
    assert_equal [1, 4], day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])
  end

  def test_no_profit
    assert_equal [0, 0], day_trader([10, 9, 8, 7, 6, 5])
  end

  def test_one_day
    assert_equal [0, 0], day_trader([5])
  end

  def test_empty_array
    assert_equal [0, 0], day_trader([])
  end

  def test_same_price_everyday
    assert_equal [0, 0], day_trader([5, 5, 5, 5, 5])
  end
end
