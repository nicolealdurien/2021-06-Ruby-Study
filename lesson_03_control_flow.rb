# Lesson 03 - Control Flow
# (all lessons from Codecademy's Ruby curriculum)

=begin
Ruby doesn't care about whitespace, but by convention, indentation ala python is followed.
Because Ruby doesn't care about whitespace, you have to put 'end' at the end of an if/else block.
Also, the way of writing 'else if' in Ruby is 'elsif'.
=end


puts "Please enter an integer: "
number = Integer(gets.chomp)

if number % 2 == 0
    puts "Your number is even!"
else
    puts "Your number is odd!"
end

# UNLESS checks if something is false rather than true. 

hungry = false

unless hungry
    puts "I'm studying Ruby!"
else 
    puts "Time for lunch!"
end

# You can also use this without an else to make another command conditional.
problem = false

print "Go for launch!" unless problem

=begin
BOOLEAN OPERATORS
and: &&
or: ||
Ruby's || is an inclusive or - if both are true, it will still evaluate to true
not: !=
=end

boolean_1 = 2**3 != 3**2 || true
puts "Boolean Study: "
puts boolean_1 
# expect true

boolean_2 = false || -10 > -9
puts boolean_2
# expect false

boolean_3 = false || false
puts boolean_3
# expect false

boolean_4 = !true
puts boolean_4
# expect false

boolean_5 = !true && !true
puts boolean_5 
# expect false

boolean_6 = !(700 / 10 == 70)
puts boolean_6
# expect false

=begin
You can also combine these operators if you really want to break your brain.
(No, but really, this is often useful when writing real programs.)
=end

boolean_a = (3 < 4 || false) && (false || true)
puts "Boolean A, B, C:"
puts boolean_a
# expect true

boolean_b = !true && (!true || 100 != 5**2)
puts boolean_b
# expect false

boolean_c = true || !(true || false)
puts boolean_c
# expect true 