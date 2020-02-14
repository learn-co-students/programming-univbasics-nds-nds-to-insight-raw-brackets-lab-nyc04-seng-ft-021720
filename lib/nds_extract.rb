$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  pp nds
  totals = {}
  row = 0
  
  while row < nds.size do
    name = nds[row][:name]
    totals[name] = 0
    col = 0
    while col < nds[row][:movies].length do
      totals[name] += nds[row][:movies][col][:worldwide_gross]
      col += 1

 end 
 row +=1
end
totals
end
