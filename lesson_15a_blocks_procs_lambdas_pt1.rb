=begin
Lesson 15a: Blocks, Procs, and Lambdas, Part 1
(all lessons from Codecademy's Ruby curriculum)
=end

# blocks aren't *quite* nameless methods - actual nameless methods are lambdas

# Blocks

5.times {
  puts "I'm a block!"
}

=begin
Collect Method and Map Method
This takes a block and applies the expression in it to each element in an array. It returns a copy; it doesn't mutate the original array (unless used as .collect!)

! in Ruby is intended to mean 'this method could do something dangerous or unexpected'

The map method does the same thing as the collect method.
=end

fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

puts doubled_fibs = fibs.collect{ |num| num * 2}

=begin
YIELD
Methods that accept blocks have a way of transferring control from the calling method to the block and back again. We can build this into methods we define by using 'yield'. You can also pass parameters to yield.
=end

def block_test
    puts "We're in the method!"
    puts "Yielding to the block..."
    yield
    puts "We're back in the method!"
  end
  
  block_test { puts ">>> We're in the block!" }

def yield_name(name)
  puts "In the method! Now let's yield..."
  yield("Jadzia")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Martok") { |n| puts "You have dishonored #{n}!"}

yield_name("Alexander") { |n| puts "#{n} has brought much honor to our house."}

def double(num)
    puts "Inside double!"
    yield(num)
    puts "Back inside double!"
end

double(81) {|n| puts (n * 2)}

=begin
PROCS
Block are NOT objects (one of the few exceptions in Ruby) and thus they can't be saved to variables. For that we need procs. You can think of a proc as a 'saved' block; just like you can give some code a name and make it a method, you can name a block and turn it into a proc. Procs help avoid repetition. They are also full-fledged objects.

Proc Syntax = call Proc.new and pass in the block you want to save.
=end

square = Proc.new { |x| x ** 3 }

=begin
When passing a proc to a method that expects a block, it will need to be preceded by &, like so: 
=end

puts [1, 2, 3].collect!(&square)

# .floor rounds a float down to the nearest integer

floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]

round_down = Proc.new { |x| x.floor }

print ints = floats.collect(&round_down)

=begin
We call also call procs directly by using the .call method
("There's always more than one way to do something in Ruby.")
=end

hi = Proc.new { puts "Hello!" }

hi.call

# You can also convert symbols to procs with '&' (will need more study)

numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

strings_array = numbers_array.collect(&:to_s)