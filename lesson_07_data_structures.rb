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

# You can also create a new, empty hash by setting a variable equal to Hash.new (Hash must be capitalized.

steve_rogers_hash = {}
bruce_banner_hash = Hash.new

=begin
These essentially do the same thing. However, with Hash.new, any additions to the hash can only be done using bracket notation. (With literal notation, you can add something with bracket notation, but you can also just go up to the curly braces and directly add a new key-value pair within them.)
=end

bruce_banner_hash["name"] = "The Hulk"
puts "Who gets mistaken at parties for the Jolly Green Giant?"
puts bruce_banner_hash["name"]

# The .each iterator also works for hashes
avengers = ["Iron Man", "Black Widow", "Hawkeye", "Captain America", "The Hulk", "Thor"]
puts "Avengers Assemble!"
avengers.each {|avenger| puts avenger}

# Iterating over a 2-D Array
sandwiches = [["ham", "pepper jack"], ["turkey", "provolone"], ["roast beef", "cheddar"]]

=begin
Getting to a single item within a 2-D array requires double bracket notation. If we wanted to access "pepper jack", we would do the following:
=end

puts sandwiches[0][1]

# Iterating over the array of arrays requires a double .each, like so:

sandwiches.each {|sandwich| sandwich.each {|item| puts item}}

# Iterating Over Hashes - this requires two placeholder variables to represent each key-value pair

dinner = {
    "soup" => "minestrone",
    "salad" => "caprese",
    "main" => "chicken scampi"
}

dinner.each do |course, item|
    puts "#{course}: #{item}"
end