=begin
Reverse the Odd Length Words
Given a string, reverse all the words which have odd length. The even length words are not changed.

Examples
reverse_odd("Bananas") ➞ "sananaB"

reverse_odd("One two three four") ➞ "enO owt eerht four"

reverse_odd("Make sure uoy only esrever sdrow of ddo length")
➞ "Make sure you only reverse words of odd length"
Notes
There is exactly one space between each word and no punctuation is used.

=end

class Oddreverse
  def odd(str)
    #converting string into array	
  	arr=str.split(" ")
    for i in 0...arr.size do
      if arr[i].size%2===1
        arr[i]=arr[i].reverse
      end
    end
    #converting array into string
    p arr.join(" ")
  end
end  
odd1=Oddreverse.new
odd1.odd("hello aziz")