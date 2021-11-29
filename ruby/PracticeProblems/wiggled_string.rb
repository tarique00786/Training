=begin

Wiggled Strings
Create a function that returns an array of the given string but offset by spaces. Here are some more precise instructions:

Keep adding spaces on the left until you have the same number of spaces as the word length.
Then keep removing spaces until you reach the original word.
Below are some helpful examples!

Examples
wiggle_string("hello") ➞ [
  "hello",
  " hello",
  "  hello",
  "   hello",
  "    hello",
  "     hello"
  "    hello",
  "   hello",
  "  hello",
  " hello",
  "hello"
]

wiggle_string("EDABIT") ➞ [
  "EDABIT",
  " EDABIT",
  "  EDABIT",
  "   EDABIT",
  "    EDABIT",
  "     EDABIT",
  "      EDABIT",
  "     EDABIT",
  "    EDABIT",
  "   EDABIT",
  "  EDABIT",
  " EDABIT",
  "EDABIT"
]

wiggle_string("Wiggle Time") ➞ [
  "Wiggle Time",
  " Wiggle Time",
  "  Wiggle Time",
  "   Wiggle Time",
  "    Wiggle Time",
  "     Wiggle Time",
  "      Wiggle Time",
  "       Wiggle Time",
  "        Wiggle Time",
  "         Wiggle Time",
  "          Wiggle Time",
  "           Wiggle Time",
  "          Wiggle Time",
  "         Wiggle Time",
  "        Wiggle Time",
  "       Wiggle Time",
  "      Wiggle Time",
  "     Wiggle Time",
  "    Wiggle Time",
  "   Wiggle Time",
  "  Wiggle Time",
  " Wiggle Time",
  "Wiggle Time"
]

=end


class WiggledString
  def wiggle(str)

    #Storing the size of string
    n=str.size

    #creating the array of size 2n+1 to store the strings
    answer=Array.new
    
    #appending values in array
    for i in 0..n do i
      answer.push " "*i+str
    end
    
    #Taking the reverse of answer(length n-1) in other array
    arr1=answer.reverse[1..answer.size]
    
    #Adding the array and arr1 and print it 
    puts answer + arr1   
  end
end

obj1=WiggledString.new
obj1.wiggle("Hello Beryl System")    

