$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  #pp nds
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {}
  director_name = ""
  total_worldwide_gross = 0

  for i in 0...nds.length
    director_name = nds[i][:name]
    total_worldwide_gross = 0

    for j in 0...nds[i][:movies].length
      total_worldwide_gross = total_worldwide_gross + nds[i][:movies][j][:worldwide_gross]
    end

    result[director_name] = total_worldwide_gross
  end

  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!

  return result
end
