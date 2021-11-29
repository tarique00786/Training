=begin

Map the Letters in a String
Given a word, create a hash which stores the indexes of each letter in an array.

Make sure the letters are the keys.
Make sure the letters are symbols.
Make sure the indexes are stored in an array and those arrays are values.
Examples
map_letters("dodo") ➞ { :d=>[0, 2], :o=>[1, 3] }

map_letters("froggy") ➞ { :f => [0], :r=>[1], :o=>[2], :g=>[3, 4], :y=>[5] }

map_letters("grapes") ➞ { :g=>[0], :r=>[1], :a=>[2], :p=>[3], :e=>[4], :s=>[5] }
Notes
All strings given will be lowercase

=end

class Mapping
  def stringmap(str)
    #creates a hash	
    hashmap={}
    #traversing for every element with its index and checking if index is already present or not
    str.split("").each_with_index do |char,indx|
      if hashmap[char.to_sym]
        hashmap[char.to_sym].push(indx)
      else
        hashmap[char.to_sym]=[indx]  
      end
    end
    p hashmap
  end
end  

map1=Mapping.new
map1.stringmap("froggy")          	