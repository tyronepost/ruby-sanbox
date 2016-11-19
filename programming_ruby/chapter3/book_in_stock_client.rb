require './book_in_stock'

book = BookInStock.new("isbn1", 33.80)
puts "ISBN    = #{book.isbn}"
puts "PRICE   = #{book.price}"

book.price = 25.00
puts "NEW PRICE = #{book.price}"

puts "PRICE IN CENTS = #{book.price_in_cents}"

book.price_in_cents = 3000
puts "PRICE IN CENTS = #{book.price_in_cents}"
puts "PRICE   = #{book.price}"

