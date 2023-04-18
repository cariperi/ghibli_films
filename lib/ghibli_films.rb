require 'httparty'
require 'json'
require 'pry'
require './lib/film'
require './lib/person'
require './lib/film_search'


# response = HTTParty.get("https://limitless-castle-00011.herokuapp.com/films") #passed URL as string argument to get, returns response object
# # response is a response object

# body = response.body # returns a JSON string
# parsed = JSON.parse(response.body, symbolize_names: true) # parses and adds flexible syntax with symbolized keys

# response_2 = HTTParty.get("https://limitless-castle-00011.herokuapp.com/people")
# parsed_2 = JSON.parse(response_2.body, symbolize_names: true) # parses and adds flexible syntax with symbolized keys

# @films = parsed.map do |data|  # returns new array of film objects
#   Film.new(data)
# end
film_search = FilmSearch.new
@films = film_search.film_information

@films.each do |film|
  puts film.title
  puts "Directed By: #{film.director}"
  puts "Produced By: #{film.producer}"
  puts "Rotten Tomatoes Score: #{film.rotten_tomatoes}"
  puts ""
end

def get_film_names(film_ids)
  film_ids.map do |id|
    @films.find {|film| return film.title if film.id == id}
  end
end

# people = parsed_2.map do |data|  # returns new array of film objects
#   Person.new(data)
# end

# people.each do |person|
#   puts person.name
#   puts get_film_names(person.find_film_ids)
# end



# require 'pry'; binding.pry