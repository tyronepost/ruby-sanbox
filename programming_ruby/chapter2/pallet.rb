class Pallet
  attr_reader :weight
  
  def initialize(weight)
    @weight = weight
  end
end

def next_pallet()
  Pallet.new(rand(5))
end

num_pallets = 0
weight = 0
while weight < 100 and num_pallets <= 5
  pallet = next_pallet()
  weight += pallet.weight
  num_pallets += 1
end

puts "Number of pallets: #{num_pallets}"
puts "Total weight: #{weight}"
