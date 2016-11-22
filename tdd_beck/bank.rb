class Bank
  def initialize
    @rates = Hash.new(0)
  end

  def rate(from, to)
    if from == to
      1
    else
      @rates[Pair.new(from, to)]
    end
  end

  def reduce(source, to)
    source.reduce(self, to)
  end

  def addRate(from, to, rate)
    pair = Pair.new(from, to)
    @rates[pair] = rate
  end
end

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
