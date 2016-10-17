def inches_to_centimeters (inches)
  inches * 2.54
end

def pounds_to_kilograms (pounds)
  pounds * 0.453592
end

name = 'Tyrone wan Kenobi'
age = 230
height = 68
weight = 170
eyes = 'Brown'
teeth = 'coffee stained'
hair = 'black'

puts "Lets talk about #{name}."
puts "He's #{height} inches tall."
puts "He's #{weight} pounds heavy."
puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee."

puts "If I add #{age}, #{height}, and #{weight} I get #{age + height + weight}."

height_cm = inches_to_centimeters height
weight_kg = pounds_to_kilograms weight
puts "Height in cm: #{height_cm}."
puts "Weight in kg: #{weight_kg}."


