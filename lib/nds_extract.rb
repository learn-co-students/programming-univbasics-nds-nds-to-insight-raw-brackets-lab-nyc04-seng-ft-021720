$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!

def directors_totals(nds)
  
  director_gross = {}
  d_counter = 0
  
  while d_counter < directors_database.count do
    total_gross = 0
    m_counter = 0
    while m_counter < directors_database[d_counter][:movies].count do
      total_gross += directors_database[d_counter][:movies][m_counter][:worldwide_gross]
      m_counter += 1
    end
    director_gross[directors_database[d_counter][:name]] = total_gross
    d_counter += 1
  end
  director_gross
end









