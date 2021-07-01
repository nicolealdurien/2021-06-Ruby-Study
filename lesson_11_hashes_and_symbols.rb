=begin
Lesson 11: Hashes and Symbols
(all lessons from Codecademy's Ruby curriculum)
=end

=begin
NIL - special value that appears if you try to access a key that doesn't exist. The only two non-true values in Ruby are 'nil' and 'false'.

But remember, we can create our own default value when creating a hash with Hash.new syntax.
=end

no_nil_hash = Hash.new("Nah, fam")

=begin
SYMBOLS - by convention, used instead of strings for hash keys. Usually a word starting with a colon. Also used to reference method names (we'll learn about that later).
=end

creatures = {
    :Tiggers => 1,
    :Heffalumps => 3,
    :Woozles => 5
}

# The => symbol above is nicknamed the 'hash rocket' among some Ruby devs.

=begin
Symbols are NOT strings.  
"string"==:string will return false. There can be multiple different strings that all have the same value, but there's only one copy of any particular symbol at a given time. You can check this out using the .object_id method.
Symbols mst be valid Ruby variable names (that is, must start with a letter or underscore, and have no spaces.) Symbols are immutable, and because of this and the above "only one copy" deal, they save memory, so they are faster as hash keys than using strings as hash keys.
=end
puts "string".object_id
puts "string".object_id

puts :symbol.object_id
puts :symbol.object_id

# Converting between symbols and strings

:sasquatch.to_s
# converts to string

"sasquatch".to_sym
# converts to symbol

# .push used to add to array

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

symbols = []
strings.each { |string|
  symbols.push(string.to_sym)
}
print symbols

# .itern does the same thing as .to_sym (short for "internalize")

=begin
Ruby 1.9 update - 'hash rocket' changed to JS/Python syntax...use colons instead of =>, and the keys become symbols even without a leading colon as long as there are no quote marks to force them to be strings.
=end

movies = {
    :Heavy_Metal => "wtf did I just watch",
    :Batman_Forever => "corny but hilarious"
}

movies = {
    Heavy_Metal: "wtf did I just watch",
    Batman_Forever: "corny but hilarious"
}

# .select - filters a hash for values that meet certain criteria
movie_ratings = {
  luca: 3,
  soul: 3.5,
  moana: 5,
  winnie_the_pooh: 4,
  the_three_caballeros: 1.5,
  frozen: 4,
  shrek_3: 2,
  land_before_time_2: 1,
  pinocchio: 3.5
}

good_movies = movie_ratings.select { |movie, rating| rating > 3 }

# .each_key and .each_value allow iteration over just one or the other

movie_ratings.each_key { |k| puts k }