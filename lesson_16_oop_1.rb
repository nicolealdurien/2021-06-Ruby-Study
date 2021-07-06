=begin
Lesson 16: Object-Oriented Programming I
(all lessons from Codecademy's Ruby curriculum)
=end

# Objects have methods, and attributes (which are just data), for example:

puts "Koopa".length
# should be 5, the number of characters in the string. 

# Data types are classes in Ruby!

=begin
CLASS SYNTAX - by convention, class names start with a capital letter and use CamelCase. 
Each class needs an initialize method - 'boots' up each instance.
Instance variables start with @ (like self.whatever in Python). The parameteres for these go on the initalize method.
=end

class Person
  def initialize(name)
    @name = name
  end
end

chief = Person.new("Ro Laren")

=begin
SCOPE - the context in which a variable is visible to the program. You can have:
global variables: available everywhere - symbol is $ (or just define it outside of any method or class)
local variables: only available inside certain methods 
class variables: members of a class - symbol is @@
instance variables: only available to particular instances of a class - symbol is @

This is also true of methods - some are avaiable anywhere, some only to a certain class, and some only to particular instance objects.
=end

# declaring global variable from within a class:
class MyClass
    $my_variable = "Hello!"
end
  
puts $my_variable

# Class variables can be used to keep track of the number of instances created

class Person
    
    @@people_count = 0
    
    def initialize(name)
      @name = name
      @@people_count += 1
    end
    
    def self.number_of_instances
      return @@people_count
    end
end

laren = Person.new("ro")
sisko = Person.new("ben")

puts "Number of Person instances: #{Person.number_of_instances}"

=begin  
INHERITANCE
expresses an "is-a" relationship
a Truck class and a Coupe class could both inherit from a Vehicle class.
Inheritance syntax in Ruby looks like:
class DerivedClass < BaseClass
    do stuff
end
You might want to override one or more attributes of a parent in a child class. If you have a Message class and an Email class that inherits from it, you may want to write a new send method that includes email address validation, protocols, etc., rather than inheriting a useless method and creating a separate send_email method. Your new send method will override/replace the inherited version for any object that is an instance of Email.
=end

class MagicalCreature
    def initialize(name)
      @name = name
    end
    
    def fight
      return "Punches enemy in the face!"
    end
end
  
  # Add your code below!
class Dragon < MagicalCreature
  def fight 
    return "Breathes fire!"
  end
end

=begin
If you overwrite a method that you later realize you actually need, you can access the original method with the 'super' keyword (since it's still part of the superclass).
=end

class Dragon < MagicalCreature
  def fight 
    puts "instead of breathing fire..."
    super
  end
end

=begin
Multiple Inheritance is disallowed in Ruby: only one superclass per class max. BUT 'mixins' are a thing we'll learn about later, that allows you to incorporate data or behavior from several classes into a single class.

Also, if you want to end a Ruby statement without going to a new line, you can just do semicolon, end, like this:
class Monkey; end
=end

