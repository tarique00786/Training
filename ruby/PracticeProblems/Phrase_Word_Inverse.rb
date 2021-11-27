=begin
	
Phrase or Word Inverse
Create a function that inverts words or the phrase depending on the value of parameter type. A "P" means to invert the entire phrase, while a "W" means to invert every word in the phrase. See the following examples for clarity.

Examples
inverter("This is Valhalla", "P") ➞ "Valhalla is this"

inverter("One fine day to start", "W") ➞ "Eno enif yad ot trats"

inverter("Division by powers of two", "P") ➞ "Two of powers by division"
	
=end

class InversePW
  def phraseword(str1,c)
  	if c=="P"
  	  str2=str1.split.reverse
  	  n=str2.size

  	  s = ""
      s += str2[0].capitalize.to_s + " "
  	  for i in 1...n-1 do
  	  	s += str2[i].to_s + " "
  	  end	
  	  s += str2[n-1].downcase.to_s
  	  return s
  	else
  	  str2=str1.split.reverse
  	  str2.map!{|e| e.reverse}

  	  return str2.join(" ").capitalize
  	end

  end
end
obj=InversePW.new
print obj.phraseword("This is Valhalla", "W")  	  	
