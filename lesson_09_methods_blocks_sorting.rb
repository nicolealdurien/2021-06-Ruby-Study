=begin
Lesson 08: Histogram
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