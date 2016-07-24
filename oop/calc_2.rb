# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)
module Calculator
  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end
end

class SimpleCalculator
  include Calculator
end

class FancyCalculator

  include Calculator

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:

puts "Testing code:"
puts "-------------------------"
calculator1 = FancyCalculator.new

result = calculator1.add(2, 3)
puts result
if result == 5
  puts 'PASS!'
else
  puts 'Please inspect your add method'
end
puts "-------------------------"
puts
result = calculator1.subtract(10, 3)
puts result
if result == 7
  puts 'PASS!'
else
  puts 'Please inspect your subtract method'
end
puts "-------------------------"
puts
result = calculator1.multiply(10, 3)
puts result
if result == 30
  puts 'PASS!'
else
  puts 'Please inspect your multiply method'
end
puts
puts "-------------------------"
puts
result = calculator1.divide(12, 3)
puts result
if result == 4
  puts 'PASS!'
else
  puts 'Please inspect your divide method'
end
puts
puts "-------------------------"
puts
result = calculator1.square_root(9)
puts result
if result == 3
  puts 'PASS!'
else
  puts 'Please inspect your divide method'
end
puts
puts "-------------------------"
