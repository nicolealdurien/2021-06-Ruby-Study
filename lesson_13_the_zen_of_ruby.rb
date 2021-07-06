=begin
Lesson 13: The Zen of Ruby
(all lessons from Codecademy's Ruby curriculum)
=end

=begin
Simpler "If" and "Unless" Statements: expression if boolean, or
expression unless boolean
No 'end' needed when on 1 line
=end

sheriff_bart = true
puts "It's twue, it's twue!" if sheriff_bart

puts "Ma'am, you're sucking on my arm" unless sheriff_bart

# Ternary Conditional Expression - boolean ? do if true : do if false

puts 5 < 8 ? "5 is less than 8!" : "5 is not less than 8."

# Case Statement: when/then - can "fold up" case statements

puts "Please enter your desired language"
greeting = gets.chomp
case greeting
  when "English" then puts "Hello!"
  when "French" then puts "Bonjour!"
  when "German" then puts "Guten Tag!"
  when "Finnish" then puts "Haloo!"
  else puts "I don't know that language!"
end

=begin
Conditional Assignment operator - syntax is ||=  this only assigns a variable if it hasn't already been assigned. 
=end

favorite_book = nil
favorite_book ||= "Ship of Magic"
puts favorite_book
favorite_book ||= "The Hobbit"
puts favorite_book
favorite_book = "Man's Search for Meaning"
puts favorite_book

=begin
Implicit Return
- if you don't tell a JS function what to return, it returns 'undefined'
- if you don't tell a Python function what to return, it returns 'None'
- BUT in Ruby - it will return the result of the last evaluated expression.
=end

def add(a, b)
    return a + b
end

def addition(a, b)
    a + b
end

# add(1, 1) and addition(1, 1) will give you the same result

=begin
SHORT-CIRCUIT EVALUATION - for && and ||, Ruby doesn't look at the right-hand expression unless it has to.
=end

def a
  puts "A was evaluated!"
  return true
end

def b
  puts "B was also evaluated!"
  return true
end

puts a || b
puts "------"
puts a && b

# Use the right tool for the job - many times you don't need a for loop

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array.each { |x| puts x if x%2 == 0 }


# UPTO and DOWNTO - can use instead of a for loop with a counter variable

95.upto(100) { |num| print num, " " }

# also works on the alphabet
"L".upto("P") { |letter| puts letter }



#RESPOND_TO: takes a symbol; returns true if an object can receive that method

age = 27
puts age.respond_to?(:next)

#SHORTCUTS - instead of .push, you can use <<, aka the concatenation operator

[1, 2, 3] << 4
# this will yield [1, 2, 3, 4]. It also works on strings:
"Dwayne" << "Johnson"
# yields "Dwayne Johnson"

