require_relative 'Monster'

def print_status(monster1, monster2)
  puts "king kong health: #{monster1.get_hp}"
  puts "godzilla health: #{monster2.get_hp}"
end

king_kong = Monster.new("king kong", 100)
godzilla = Monster.new("godzilla", 95)

while king_kong.get_hp > 0 and godzilla.get_hp > 0
  king_kong.attack godzilla 
  print_status king_kong, godzilla
  godzilla.attack king_kong
  print_status king_kong, godzilla
end


