$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  index = 0
  result = {}
  
  while index < directors_database.length
    result[directors_database[index][:name]] = 0
    count = 0 
    
    while count < directors_database[index][:movies].length
    
      result[directors_database[index][:name]] += directors_database[index][:movies][count][:worldwide_gross]
      count += 1
      end 
    index += 1
  end
return result  
end

#AoHoAoH

puts directors_totals(directors_database)


