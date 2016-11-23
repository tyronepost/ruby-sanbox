require_relative 'bank'
require_relative 'money' 
require_relative 'sum'

require 'test/unit'

class TestMoney < Test::Unit::TestCase

  def test_addition
    five = Money.dollar(5)
    sum = Sum.new(five, five)
    bank = Bank.new
    reduced = bank.reduce(sum, "USD")
    ten = Money.dollar(10)
    assert_equal(ten, reduced)
  end
 
  def test_mixed_addition
    fiveBucks = Money.dollar(5)
    tenFrancs = Money.franc(10)
    bank = Bank.new
    bank.addRate("CHF", "USD", 2)
    result = bank.reduce(fiveBucks.plus(tenFrancs), "USD")
    assert_equal(Money.dollar(10), result)
  end
   
  def test_multiplication
    five = Money.dollar(5)
    assert_equal(Money.dollar(10), five.times(2))
    assert_equal(Money.dollar(15), five.times(3))
  end

  def test_reduce_sum
    sum = Sum.new(Money.dollar(3), Money.dollar(4))
    bank = Bank.new
    result = bank.reduce(sum, "USD")
    assert_equal(Money.dollar(7), result)
  end

  def test_reduce_money_diff_currency
    bank = Bank.new
    bank.addRate("CHF", "USD", 2);
    result = bank.reduce(Money.franc(2), "USD")
    assert_equal(Money.dollar(1), result)
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

  def test_identity_rate
    bank = Bank.new
    assert_equal(1, bank.rate("USD", "USD"))
  end

  def test_pair_equality
    assert_equal(Pair.new("CHF", "USD"), Pair.new("CHF", "USD"))
    assert_true(Pair.new("CHF", "USD").eql?(Pair.new("CHF", "USD")))
  end

  def test_hash
    rates = Hash.new(0)
    rates[Pair.new("CHF", "USD")] = 2
    assert_equal(2, rates[Pair.new("CHF", "USD")])
  end
end
