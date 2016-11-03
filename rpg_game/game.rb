require_relative 'Monster'

def print_status(monster1, monster2)
  puts "king kong health: #{monster1.hp}"
  puts "godzilla health: #{monster2.hp}"
end

king_kong = Monster.new("king kong", 100)
godzilla = Monster.new("godzilla", 95)

while king_kong.hp > 0 and godzilla.hp > 0
  king_kong.attack godzilla 
  print_status king_kong, godzilla
  godzilla.attack king_kong
  print_status king_kong, godzilla
end

if king_kong.hp == 0
  puts 'Godzilla wins!!'
else
  puts 'King Kong wins!!'
end
