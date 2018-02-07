movies = {
  TheGodfather: 5.0
  }

puts "What would you like to do? "
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp

case choice
when "add"
  puts "What is the movie title?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What is the movie rating?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when "update"
  puts "What title would you like to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "That movie does not yet exist!"
  else
    puts "What is the new rating?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with a rating of #{rating}."
  end
when "display"
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when "delete"
  puts "What movie would you like to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "That movie does not exist yet!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been deleted!"
  end
else
  puts "Error! Please use one of the commands listed"
end
