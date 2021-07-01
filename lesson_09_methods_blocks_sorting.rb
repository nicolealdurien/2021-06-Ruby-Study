=begin
Lesson 09: Methods, Blocks, and Sorting
(all lessons from Codecademy's Ruby curriculum)
=end

=begin
Functions are called "methods" in Ruby and start with 'def' like Python.
They include 3 parts:
- header: def name_of_method(arguments)
- body: code block that describes what the method is to carry out; this is indented two spaces by convention.
- end: "end" keyword at the end
Methods are called by their name; unlike in JS or Python, if the method takes no arguments, it doesn't need to be called with empty parentheses.
If a method takes arguments, we say it "accepts" or "expects those arguments".
=end

def mercury
    puts "Any way the wind blows..."
end

mercury

def cuber(num)
    puts num**3
end

cuber(5)

=begin
SPLAT ARGUMENTS - allow for a method to receive an unknown number of arguments (like if you wrote a method where a user could input as many friends' names as they wished, to greet all their friends)
=end

def what_up(greeting, *friends)
    friends.each { |friend| 
        puts "#{greeting}, #{friend}!"
    }
end

what_up("What up", "homes")
what_up("Hello", "Tony", "Bruce", "Aisha")

# BLOCKS - like nameless methods (like JS anon functions or Python lambdas)

1.times do
    puts "I'm a code block!"
end

1.times { puts "Me too, me too!" }

# Blocks can't be repeatedly invoked like named methods can.

# method that capitalizes a word
def capitalize(string) 
    puts "#{string[0].upcase}#{string[1..-1]}"
end
  
capitalize("tigger") # prints "Ryan"
capitalize("piglet") # prints "Jane"
  
# block that capitalizes each string in the array
["tigger", "piglet"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} 

=begin
what's with the [1..-1]? Using negative index numbers starts from the end of the array, rather than the beginning. As there’s no negative Zero, Array[-1] will return the final element of the array.

That line is saying, 'return the first element of the string ( string[0] ) as an upper case string, and then return every other element from the second up to and including the final element ( string[1…-1] )
=end

=begin
Methods can take a block as a parameter. (That's what .each has been doing this whole time!) This is helpful for abstraction.
=end
[1, 2, 3, 4, 5].each do |i| 
    puts i 
end

[1, 2, 3, 4, 5].each { |i| puts i*5 }

# SORTING

my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]

my_array.sort!
puts my_array

# .sort called on an array of strings will sort it alphabetically. 

=begin
COMBINED COMPARISON OPERATOR
- looks like <=>
- returns 0 if first operand equals the second
- returns 1 if first operand is greater than the second
- returns -1 if first operand is less than the second
=end 

book_1 = "A Wrinkle in Time"

book_2 = "A Brief History of Time"

puts book_1 <=> book_2
# expect 1 

# .sort does ascending order by default but can take an arg for descending

books = ["Lord of the Rings", "Fahrenheit 451", "1984", "Kushiel's Dart"]

books.sort! { |firstBook, secondBook| secondBook <=> firstBook }
puts books

