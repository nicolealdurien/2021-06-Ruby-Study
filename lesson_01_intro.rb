# Lesson 01 - Intro
# (all lessons from Codecademy's Ruby curriculum)

my_num = 25

my_boolean = true

my_string = "Ruby"

puts my_num
puts my_boolean
puts my_string

my_num = 100

puts my_num

# single line comments in Ruby look like this

=begin
multi-line comments in Ruby
will look like this
=end

# a little arithmetic practice
puts 25%7
puts 25%5
puts 2**3

=begin 
puts vs print:
puts is short for "put string".
it also adds a newline after whatever
you have printed.
neither need parentheses or semicolons like python or javascript
=end

#everything in ruby is an object, which allows for things to have built-in methods

puts "Hello. My name is Inigo Montoya. You killed my father. Prepare to die.".length

puts "racecar".reverse
puts "banana".reverse

puts "hush".upcase
puts "Tiny".downcase

=begin
if you set these to a variable, you can use the same methods. 
But they don't change the underlying value of the variable.
(We learn how to do that in Lesson 2.)
You can also chain methods together rather than calling them
each on separate lines.
=end

name = "Sherlock Holmes"

puts name.upcase
puts name
puts name.downcase.reverse