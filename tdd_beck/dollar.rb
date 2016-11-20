require_relative 'money'

class Dollar < Money
  attr_reader :currency

  def initialize(amount, currency)
    super(amount, currency)
  end
  
  def times(multiplier)
    Money.dollar(amount * multiplier)
  end
end
