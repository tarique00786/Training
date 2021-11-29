=begin

Shorthand for Key Signatures
Given a string containing a key signature written in shorthand, create a function which replaces the shorthand with its full written name.

A lowercase letter denotes a minor key.
An uppercase letter denotes a major key.
See the examples below for a more helpful guide!

Examples
full_key_name("Prelude in C") ➞ "Prelude in C major"

full_key_name("Fugue in c") ➞ "Fugue in C minor"

full_key_name("Toccata and Fugue in d") ➞ "Toccata and Fugue in D minor"

full_key_name("Sonata in eb") ➞ "Sonata in Eb minor"
	

	
=end

class ShorthandSignature
  def Signature(str)
    #converting string into array by splitting on " "  
    arr=str.split(" ")
    #Checking if the first character of last elemnt is downcase   
    if arr.last[0]==arr.last[0].downcase
      #Capitalize the last element of array  
      arr.last.capitalize!
      arr.push("minor")
    else
      arr.last.capitalize!
      arr.push("major")
    end
    #convert array into string and display the result
    p arr.join(" ")
  end
end          
obj=ShorthandSignature.new
obj.Signature("Toccata and Fugue in d")      