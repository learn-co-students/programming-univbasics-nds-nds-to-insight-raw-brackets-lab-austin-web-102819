
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
 
 result = {} 
 i = 0 #Hash[0] #=> Steven Speilberg hash, with two keys 
 while i < nds.length 
   j = 0 
   total = 0
   while j < nds[i][:movies].length
       total += nds[i][:movies][j][:worldwide_gross].to_i
       result[nds[i][:name]] = total
      j += 1 
   end 
   
      i += 1 
  end
 
  
 return result
end

#NDS is set up as an array of hashes; the first key in each hash is the director's 'name', and the second key points to the director's 'movies'. The 'movies' key points to another array of hashes: inside each of the sub-hashes inside 'movies' is a collection of data points/key-value pairs that model a movie - title, studio, worldwide_gross, and release_year. 
