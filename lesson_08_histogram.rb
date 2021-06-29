=begin
Lesson 08: Histogram
(all lessons from Codecademy's Ruby curriculum)
=end

=begin
When creating a new, empty hash, you can include a 'default value' that will be returned whenever someone tries to access a non-existent key. For example:
=end
new = Hash.new("these are not the droids you're looking for")
puts new
#should be empty
puts new["puppy"]

# .sort_by returns an array of arrays, .to_s converts a value to a string so we can concatenate it


puts "Please enter your sentence: "
text = gets.chomp
words = text.split(" ")
frequencies = Hash.new(0)
words.each { |word|
    frequencies[word] += 1
}
frequencies = frequencies.sort_by do |word, count|
    count
end
frequencies.reverse!
frequencies.each do |word, count|
    puts word + " " + count.to_s
end