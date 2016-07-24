# Below, we have two types of calculators. The simple one can perform basic arithmetic, 
# while the fancy one can also do square roots in addition to basic arithmetic.
# There is nothing wrong with the code below per se, but there is duplication
# between the two classes, since they each contain four identical methods.
# This is generally considered to be a code design flaw, since there may come
# a time where we decide to change how these methods work, and we may accidentally
# update the methods in one class, and forget to update them in the other, and our
# two classes become out of sync. This known as the DRY principle, that is:
# Don't Repeat Yourself.
# There are a number of techniques that we can use to fix this example. One is 
# a fundamental concept in OOP known as Inheritance. Your exercise is to research 
# Inheritance in Ruby, and use it to remove the duplication (or DRY up) the code 
# below. You must also write the driver code to test your classes.

class SimpleCalculator

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

class FancyCalculator < SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

# Write your own driver code below:

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
