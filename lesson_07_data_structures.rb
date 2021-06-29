=begin
Lesson 07: Data Structures
(all lessons from Codecademy's Ruby curriculum)
=end

=begin
access by index works the same as in JS - array[i]

arrays can contain booleans, strings, numbers (maybe not all in the same array, not sure yet).
you can have an array of arrays
=end

my_2d_array = [[1, 1], [2, 2], [3, 3], ["bob", "jane"]]
my_2d_array.each { |x| puts "#{x}\n"}

=begin
HASH - like a JS object or Python dictionary - collection of key-value pairs

In Ruby syntax, values are assigned to keys using =>. Any Ruby object can be a key or value.
=end

tony_stark_hash = {
    "name" => "Iron Man",
    "age" => 54,
    "hungry?" => true
}

puts "Who am I?"
puts "I am " + tony_stark_hash["name"] + "."

# You can also create a new, empty hash by setting a variable equal to Hash.new.

steve_rogers_hash = {}
pepper_potts_hash = Hash.new

# These are essentially the same thing. Hash must be capitalized.