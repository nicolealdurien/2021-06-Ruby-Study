# Lesson 02 - Formatter
# (all lessons from Codecademy's Ruby curriculum)

=begin
INPUT
Ruby's method of acquiring user input is 'gets'.
'chomp' removes the newline that would otherwise come with each bit of input.
So what would be first_name = input("Please enter your first name: ") in Python 
would look like the following in Ruby:
=end

puts "Please enter your first name: "
first_name = gets.chomp

# let's get more info from the user

print "Please enter your last name: "

last_name = gets.chomp

print "Please enter your city: "

city = gets.chomp

print "Please enter your state: "

state = gets.chomp

# STRING INTERPOLATION - #{variable_goes_here}
puts "Your name is #{first_name} #{last_name}, and you live in #{city}, #{state}."

# ASSIGN RESULT OF METHOD BACK TO VARIABLE WITH BANG CHARACTER
puts "Please enter the first name of a favorite fictional character using all lowercase: "
character_first_name = gets.chomp
character_first_name.capitalize!
puts character_first_name
character_first_name.upcase!
puts character_first_name