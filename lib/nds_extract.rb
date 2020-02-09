$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  
  result = {}
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  
  directors_database.length.times do |i|
    sum = 0
    directors_database[i][:movies].length.times do |index|
      sum = sum + directors_database[i][:movies][index][:worldwide_gross]
    end
    result[directors_database[i][:name]] = sum
  end
  
  # Be sure to return the result at the end!
  result
end
