=begin

Write a function that sorts the keys in a hash by the length of the key as a string. For instance, 
the hash: { abc: 'hello', 'another_key' => 123, 4567 => 'third' } should result in: ["abc", "4567", "another_key"]

=end

class Sort_hash
  def keysort(hash1)	
    a=hash1.keys.map{|key| key.to_s}
    return a.sort{|v1,v2| v1.size<=>v2.size}
  end
end

sort1=Sort_hash.new
p sort1.keysort({ abc: 'hello', 'another_key' => 123, 4567 => 'third' })    	
