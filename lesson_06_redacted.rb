=begin
Lesson 06: Redacted! 
(all lessons from Codecademy's Ruby curriculum)
=end

# .split method takes in a string and returns an array, divided at a chosen delimiter

puts "Enter desired text: "
text = gets.chomp
puts "Enter word to redact: "
redact = gets.chomp

words = text.split(" ")
words.each do |word|
    if word == redact
        print "REDACTED "
    else
        print word + " "
    end
end