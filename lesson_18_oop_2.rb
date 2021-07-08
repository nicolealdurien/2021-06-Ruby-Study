=begin
Lesson 18: Object-Oriented Programming II
(all lessons from Codecademy's Ruby curriculum)
=end

=begin
PUBLIC VS PRIVATE METHODS
Public methods can be called from outside the class, allowing for an interface with the rest of the program. Private methods cannot. If you write a private method within a class, say you call it bank_account, then try to call it, like instance_name.bank_account, you will get an error.

EXPLICIT RECIEVER - object instance on which a method is called (instance_name) in our example above. Private methods cannot be called with an explicit receiver.

In order to access private information, we have to create public methods that know how to get it. This separates the private *implementation* from the public *interface*.
=end

class Dog
  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  public
  def bark
    puts "Woof!"
  end

  private
  def id
    @id_number = 12345
  end

end

=begin
We can use attr_reader to access a variable and attr_writer to change it. To make it both readable and writeable at once, use attr_accessor.
=end

class Person
  attr_reader :name
  attr_writer :job
  attr_accessor :age
    def initialize(name, job, age)
      @name = name
      @job = job
    end
end

=begin
MODULES
You can pull in pre-existing modules or make your own. They're super easy!
Constants are great to include in modules. Ruby will warn you if you try to change a constant (though it doesn't force you to keep the same value like other languages).  Ruby constants are written in ALL_CAPS with underscores between words if needed.
=end

module MyMedia
    FAVE_FILM = "The Princess Bride"
end

# NAMESPACING: keeping methods and constants properly separated

# SCOPE RESOLUTION OPERATOR - double colon, tells Ruby *where* to look, e.g., Math::PI not Circle::PI

# Some modules need to be explicitly brought in: require 'module' like in JS

require 'date'

puts Date.today

# Modules can also be *included* in a class.  When this is done, it's called a 'mixin'.

class Angle
    include Math
    attr_accessor :radians
    
    def initialize(radians)
      @radians = radians
    end
    
    def cosine
      cos(@radians)
    end
end

acute = Angle.new(1)
acute.cosine


=begin
MIXINS are how we're able to use Ruby to mimic multiple inheritance; by including multiple modules, we can get any combination of behaviors we want within our classes.

'include' works at the instance level
'extend' works at the class level - the class itself and not the instances can use the methods
=end

module Languages
    FAVE = "Ruby"  
end

class Master
  include Languages
  def initialize; end
  def victory
    puts FAVE
  end
end

total = Master.new
total.victory