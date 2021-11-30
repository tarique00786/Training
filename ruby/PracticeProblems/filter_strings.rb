=begin

Filter Strings from Array
Create a function that takes an array of strings and integers, and filters out the array so that it returns an array of integers only.

Examples
filter_array([1, 2, 3, "a", "b", 4]) ➞ [1, 2, 3, 4]

filter_array(["A", 0, "Edabit", 1729, "Ruby", "1729"]) ➞ [0, 1729]

filter_array(["Nothing", "here"]) ➞ []

=end

class Filterstring
  def  stringfromarray(arr)
    answer=Array.new
    #iterate in array and check value is integer or not 	
    arr.each do |value|
      if value.class==Integer
        #pushing the integer values in answer array	
        answer.push(value)
      end
    end
    p answer
 end
end

str1=Filterstring.new
str1.stringfromarray(["A", 0, "Edabit", 1729, "Ruby", "1729"])
        	
