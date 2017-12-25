puts "How much is the bill?"
bill = gets.chomp.to_f
# puts "The bill is $#{bill}"
total = sprintf('%.2f',(bill *1.20))
puts "The total is $#{total}"
