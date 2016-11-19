require_relative 'account'
require_relative 'transaction'

savings = Account.new(100)
checking = Account.new(200)

puts "checking balance: #{checking.balance}"
puts "savings balance: #{savings.balance}"

trans = Transaction.new(checking, savings)
trans.transfer(50)

puts "checking balance: #{checking.balance}"
puts "savings balance: #{savings.balance}"
