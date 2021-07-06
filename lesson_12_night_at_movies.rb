=begin
Lesson 12: A Night at the Movies
(all lessons from Codecademy's Ruby curriculum)
=end

# CASE statement - decides what action to take based on user input


movies = {
    blazing_saddles: 5
}

puts "To add a movie, type 'add'."
puts "To update a movie, type 'update'." 
puts "To display a movie, type 'display'."
puts "To delete a movie, type 'delete'."
puts "Enter your selection: "

choice = gets.chomp

case choice
  when "add"
    puts "Enter your movie title: "
    title = gets.chomp.to_sym
    puts "Rate this movie on a scale of 5: "
    rating = gets.chomp.to_i
    if movies[title] == nil
        movies[title] = rating
        puts "#{title} with a rating of #{rating} has been added!"
    else
        puts "That movie is already stored!"
    end
  when "update"
    puts "Enter your movie title: "
    title = gets.chomp.to_sym
    if movies[title] == nil
        puts "This movie is not yet stored."
    else
        puts "Please enter your updated rating on a scale of 5: "
        rating = gets.chomp.to_i
        movies[title] = rating
        puts "#{title} has been updated to a rating of #{rating}."
    end
  when "display"
    movies.each { |movie, rating|
        puts "#{movie}: rated #{rating}/5"
    }
  when "delete"
    puts "Enter movie to be deleted: "
    title = gets.chomp.to_sym
    if movies[title] == nil
        puts "This movie is not yetstored."
    else
        movies.delete(title)
        puts "#{title} has been deleted."
    end
  else
    puts "Error!"
end