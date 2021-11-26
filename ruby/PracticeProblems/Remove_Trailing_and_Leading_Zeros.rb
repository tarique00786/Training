=begin
Create a function that takes in a number as a string n and returns the number without trailing and leading zeros.

Trailing Zeros are the zeros after a decimal point which don't affect the value 
(e.g. the last three zeros in 3.4000 and 3.04000).

Leading Zeros are the zeros before a whole number which don't affect the value 
(e.g. the first three zeros in 000234 and 000230).

Examples
remove_leading_trailing("230.000") ➞ "230"

remove_leading_trailing("00402") ➞ "402"

remove_leading_trailing("03.1400") ➞ "3.14"

remove_leading_trailing("30") ➞ "30"
=end

class RemoveZeroes
  def trailingzeros(str)
    value=str.to_f          #converts string in floating point number
    arr=value.to_s.split(".")     #again converting into string and then splitting based on .
    if arr[1]=="0"
      arr.pop()                   #deletes the last element
    end
    puts arr.join(".")  	
  end
end
obj=RemoveZeroes.new
obj.trailingzeros("03.1400")        	