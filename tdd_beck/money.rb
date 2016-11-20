class Money
  attr_reader :amount

  def self.dollar(amount)
    Dollar.new(amount)
  end

  def self.franc(amount)
    Franc.new(amount)
  end

  def ==(other)
    amount == other.amount && self.class == other.class
  end

end
