$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)

  value_spielberg = 0
  value_russos = 0
  value_cameron = 0
  value_lee = 0
  value_wachowskis = 0
  value_zemeckis = 0
  value_tarantino = 0
  value_scorsese = 0
  value_coppola = 0
  
  row_index = 0
  while row_index < directors_database.length do
      inner_index = 0
      while inner_index < directors_database[row_index][:movies].length do
        
       if directors_database[0][:name] == "Stephen Spielberg"
        value_spielberg = directors_database[0][:movies][0][:worldwide_gross] + directors_database[0][:movies][1][:worldwide_gross] + directors_database[0][:movies][2][:worldwide_gross] + directors_database[0][:movies][3][:worldwide_gross] + directors_database[0][:movies][4][:worldwide_gross] + directors_database[0][:movies][5][:worldwide_gross]
        end
        if directors_database[1][:name] == "Russo Brothers"
          value_russos = directors_database[1][:movies][0][:worldwide_gross] + directors_database[1][:movies][1][:worldwide_gross] + directors_database[1][:movies][2][:worldwide_gross] + directors_database[1][:movies][3][:worldwide_gross] + directors_database[1][:movies][4][:worldwide_gross] + directors_database[1][:movies][5][:worldwide_gross]
        end
        if directors_database[2][:name] == "James Cameron"
          value_cameron = directors_database[2][:movies][0][:worldwide_gross] + directors_database[2][:movies][1][:worldwide_gross] + directors_database[2][:movies][2][:worldwide_gross] + directors_database[2][:movies][3][:worldwide_gross] + directors_database[2][:movies][4][:worldwide_gross] + directors_database[2][:movies][5][:worldwide_gross] + directors_database[2][:movies][6][:worldwide_gross]
        end
        if directors_database[3][:name] == "Spike Lee"
          value_lee = directors_database[3][:movies][0][:worldwide_gross] + directors_database[3][:movies][1][:worldwide_gross] + directors_database[3][:movies][2][:worldwide_gross] + directors_database[3][:movies][3][:worldwide_gross] + directors_database[3][:movies][4][:worldwide_gross] 
        end
         if directors_database[4][:name] == "Wachowski Siblings"
          value_wachowskis = directors_database[4][:movies][0][:worldwide_gross] + directors_database[4][:movies][1][:worldwide_gross] + directors_database[4][:movies][2][:worldwide_gross] + directors_database[4][:movies][3][:worldwide_gross] + directors_database[4][:movies][4][:worldwide_gross] + directors_database[4][:movies][5][:worldwide_gross] 
        end
          if directors_database[5][:name] == "Robert Zemeckis"
          value_zemeckis = directors_database[5][:movies][0][:worldwide_gross] + directors_database[5][:movies][1][:worldwide_gross] + directors_database[5][:movies][2][:worldwide_gross] + directors_database[5][:movies][3][:worldwide_gross] + directors_database[5][:movies][4][:worldwide_gross] + directors_database[5][:movies][5][:worldwide_gross] 
        end
          if directors_database[6][:name] == "Quentin Tarantino"
          value_tarantino = directors_database[6][:movies][0][:worldwide_gross] + directors_database[6][:movies][1][:worldwide_gross] + directors_database[6][:movies][2][:worldwide_gross] + directors_database[6][:movies][3][:worldwide_gross] + directors_database[6][:movies][4][:worldwide_gross] + directors_database[6][:movies][5][:worldwide_gross] 
        end
         if directors_database[7][:name] == "Martin Scorsese"
          value_scorsese = directors_database[7][:movies][0][:worldwide_gross] + directors_database[7][:movies][1][:worldwide_gross] + directors_database[7][:movies][2][:worldwide_gross] + directors_database[7][:movies][3][:worldwide_gross] + directors_database[7][:movies][4][:worldwide_gross] + directors_database[7][:movies][5][:worldwide_gross] 
        end
         if directors_database[8][:name] == "Francis Ford Coppola"
          value_coppola = directors_database[8][:movies][0][:worldwide_gross] + directors_database[8][:movies][1][:worldwide_gross] + directors_database[8][:movies][2][:worldwide_gross] + directors_database[8][:movies][3][:worldwide_gross] + directors_database[8][:movies][4][:worldwide_gross] + directors_database[8][:movies][5][:worldwide_gross] 
        end
        inner_index += 1
      end
    row_index += 1
 end
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
 result = {
   "Stephen Spielberg" => value_spielberg,
   "Russo Brothers" => value_russos,
   "James Cameron" => value_cameron,
   "Spike Lee" => value_lee,
   "Wachowski Siblings" => value_wachowskis,
   "Robert Zemeckis" => value_zemeckis,
   "Quentin Tarantino" => value_tarantino,
   "Martin Scorsese" => value_scorsese,
   "Francis Ford Coppola" => value_coppola
 
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
  result
end

