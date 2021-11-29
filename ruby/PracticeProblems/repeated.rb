=begin

💥repeatedrepeatedrepeated💥
This challenge concerns strings such as:

"repeatedrepeatedrepeated"
... that are obtained by repeating a smaller string, which in this case is the string "repeated".

On a related note, since the string above is made of 3 repetitions, one way to produce this string is via the code "repeated" * 3.

Write a function that, given a string, either:

Returns false if the string isn't made by repeating a smaller string or ...
Returns the number of repetitions if the string repeats a smaller string.
Examples
is_repeated("repeatedrepeatedrepeated") ➞ 3

is_repeated("overintellectualizations") ➞ False

is_repeated("nononononononononononono") ➞ 12

is_repeated("moremoremoremoremoremore") ➞ 6

is_repeated(",,,,,,,,,,,,,,,,,,,,,,,,") ➞ 24
Notes
To keep things a little simpler, all strings in the tests will have length exactly 24, j
ust as in all the examples above. In particular, the answers will always be divisors of 24.

=end

class Repeated
  def  stringrepeat(str)
    str_size=str.size
    pattern=''
    for i in 0...str_size do
      #adding string character in pattern	
      pattern += str[i]
      #checking for atleast 2 repeatation in string for the patterns
      for j in 2..str_size do
        if pattern*j==str
          return j
        end
      end
    end
    return false
  end
end

strrepeat=Repeated.new
puts strrepeat.stringrepeat("hellohellohellohello")              	

