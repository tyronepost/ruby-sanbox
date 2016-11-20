require_relative 'bank'
require_relative 'money' 
require_relative 'sum'

require 'test/unit'

class TestMoney < Test::Unit::TestCase
  def test_multiplication
    five = Money.dollar(5)
    assert_equal(Money.dollar(10), five.times(2))
    assert_equal(Money.dollar(15), five.times(3))
  end

  def test_addition
    five = Money.dollar(5)
    sum = Sum.new(five, five)
    bank = Bank.new
    reduced = bank.reduce(sum, "USD")
    ten = Money.dollar(10)
    assert_equal(ten, reduced)
  end

  def test_reduce_sum
    sum = Sum.new(Money.dollar(3), Money.dollar(4))
    bank = Bank.new
    result = bank.reduce(sum, "USD")
    assert_equal(Money.dollar(7), result)
  end

  def test_franc_multiplication
    five = Money.franc(5)
    assert_equal(Money.franc(10), five.times(2))
    assert_equal(Money.franc(15), five.times(3))
  end

  def test_currency
    assert_equal("USD", Money.dollar(1).currency)
    assert_equal("CHF", Money.franc(1).currency)
  end


  def test_equality
    assert_true(Money.dollar(5) == Money.dollar(5))
    assert_false(Money.dollar(5) == Money.dollar(6))
    assert_true(Money.franc(5) == Money.franc(5))
    assert_false(Money.franc(5) == Money.franc(6))
    assert_false(Money.dollar(5) == Money.franc(5))
  end
end
