# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.
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

class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

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
