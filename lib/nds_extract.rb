$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  result = {}
  director_index = 0
  while director_index < directors_database.length do
    movie_index = 0
    total = 0
    while movie_index < directors_database[director_index][:movies].length do
      # add each movie's gross at movie_index at total
      total += directors_database[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    result[directors_database[director_index][:name]] = total
    director_index += 1
  end
  return result
end

# First number is the director_index, second number is the movie_index
# Getting the director's name- need to iterate the director_index to get each name.
pp directors_database[0][:name]
# Getting the gross of a movie for a director. Need to iterate the movie_index for each director
pp directors_database[0][:movies][0][:worldwide_gross]