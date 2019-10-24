$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)

  result = {
  }
  
  i = 0 #which movie director's hash we're on
  
  while i < nds.length do
    tranch = 0 #which movie director we're on
   j = 0
    while j < nds[:movies].length do
     total += nds[:movies][:worldwide_gross].to_i 
     j += 1 
    end
  
    result[name] = total
    i += 1 

  end  
  
  return result
end

#NDS is set up as an array of hashes; the first key in each hash is the director's 'name', and the second key points to the director's 'movies'. The 'movies' key points to another array of hashes: inside each of the sub-hashes inside 'movies' is a collection of data points that model a movie - title, studio, worldwide_gross, and release year. 
