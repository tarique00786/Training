=begin
Longest Abecedarian Word
An abecedarian word is a word where all of its letters are arranged in alphabetical order. Examples of these words include:

Empty
Forty
Almost
Given an array of words, create a function which returns the longest abecedarian word. If no word in an array matches the criterea, return an empty string.

Examples
longest_abecedarian(["ace", "spades", "hearts", "clubs"]) ➞ "ace"

longest_abecedarian(["forty", "choppy", "ghost"]) ➞ "choppy"

longest_abecedarian(["one", "two", "three"]) ➞ ""

=end


class Abecedarian
  def findword(arr)
  	maxcount=0
  	ans=''
    for i in 0..arr.size-1
    	count=0
    	str=arr[i]
    	#puts str.class
    	n=str.size
    	j=0
      	while j<n-1 && str[j]<str[j+1]
      	  count += 1 
      	  j += 1
      	end
      	if count>maxcount
      	  maxcount=count
          ans += str
      	end  	
    end  
     puts ans 
  end
end

obj=Abecedarian.new
obj.findword(["for", "chox", "g"])

        	
      	
