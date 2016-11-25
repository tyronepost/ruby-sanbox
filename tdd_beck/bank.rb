class Bank
  def initialize
    @rates = Hash.new(0)
  end

  def rate(from, to)
    unless from == to
      @rates[Pair.new(from, to)]
    else
      1
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
