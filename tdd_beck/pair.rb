class Pair
  attr_reader :from, :to
  def initialize(from, to)
    @from = from
    @to = to
  end

  def ==(obj)
    self.from == obj.from && self.to == obj.to
  end

  def eql?(obj)
    self.from == obj.from && self.to == obj.to
  end

  def hash
    [from, to].hash
  end
end
