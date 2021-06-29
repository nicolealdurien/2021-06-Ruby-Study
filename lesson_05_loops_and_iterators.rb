# UNTIL LOOP: backward while loop

counter = 1

puts "Until Loop"
until counter > 10
    puts counter
    counter += 1
end

# +=, -=, *=, /= are a thing in Ruby but ++ and -- are not

# FOR LOOP - ranges declared by dots - 3 dots for exclusive, 2 for inclusive

puts "Exclusive For Loop"
for num in 1...11
    puts num
end

puts "Inclusive For Loop"
for num in 1..5
    puts num
end

=begin
ITERATOR - any Ruby method that repeatedy involves a block of code.
LOOP method - just called loop
loop { print "Hello, world" } would be a simple - but infinite! - loop.
Can also use "do" to start and "end" to end rather than the curly braces.
=end

puts "Basic Loop Method"
i = 20
loop do
    i -=1
    puts "#{i}"
    break if i <= 0
end

# NEXT can be used to skip over steps in the loop
puts "Print only odd numbers"
for i in 1..10
    next if i % 2 == 0
    puts i
end 

# .each METHOD - can apply to each element of an object, one at a time
array = [1, 2, 3, 4, 5]

puts ".each Method"
array.each do |x|
    x += 10
    puts "#{x}"
end

puts ".each with curly braces"
array.each { |x| puts x }

puts "another .each example"
odds = [1,3,5,7,9]

odds.each do |x|
  x *= 2
  puts "#{x}"
end

=begin
.times ITERATOR - "like a super compact for loop" - perform a task on each item in an object a specified number of times.
=end

puts ".times Method"
10.times { puts "Hello, world!"}

