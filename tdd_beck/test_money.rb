require_relative 'dollar'
require_relative 'franc'
require 'test/unit'

class TestMoney < Test::Unit::TestCase
  def test_multiplication
    five = Dollar.new(5)
    assert_equal(Dollar.new(10), five.times(2))
    assert_equal(Dollar.new(15), five.times(3))
  end

  def test_franc_multiplication
    five = Franc.new(5)
    assert_equal(Franc.new(10), five.times(2))
    assert_equal(Franc.new(15), five.times(3))
  end

  def test_equality
    assert_true(Dollar.new(5) == Dollar.new(5))
    assert_false(Dollar.new(5) == Dollar.new(6))
    assert_true(Franc.new(5) == Franc.new(5))
    assert_false(Franc.new(5) == Franc.new(6))
    assert_false(Dollar.new(5) == Franc.new(5))
  end
end
