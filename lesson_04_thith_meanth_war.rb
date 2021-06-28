=begin
Lesson 04 - Thith Meanth War
(all lessons from Codecademy's Ruby curriculum)

Building the "Daffy Duck"-ifier

The .gsub! method stands for 'global substitution' - no space can be between .gsub and its parentheses.
=end


puts "Please enter your sentence to be Daffy-Duck-ified! "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
    user_input.gsub!(/s/, "th")
else
    puts "No change needed!"
end
puts user_input