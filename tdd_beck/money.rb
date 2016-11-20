class Money
  attr_reader :amount

  def ==(other)
    amount == other.amount && self.class == other.class
  end

end
