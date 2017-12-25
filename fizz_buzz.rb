# prompt:
# create a method called fizzbuzz that accepts a number as an argument
# and prints every number between 0 and that number but...
# for numbers that are divisible by 3, print "fizz" instead of the number

# def fizz_buzz(number)
#   number.times do |i|
#     if (i % 3)==0
#       puts "fizz"
#     elsif (i % 5)==0
#       puts "buzz"
#     elsif ((i % 3)==0) && ((i % 3)==0)
#       puts "fizzBuzz"
#     else
#       puts i
#     end
#   end
# end

# fizz_buzz(101)

101.times do |i|
  if i > 0 && ((i % 3)==0) && ((i % 5)==0)
    puts "FizzBuzz"
  elsif i > 0 && (i % 3)==0
    puts "Fizz"
  elsif i > 0 && (i % 5)==0
    puts "Buzz"
  elsif
    i > 0
    puts i
  end
end
