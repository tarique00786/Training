=begin

Factorize a Number
Create a function that takes a number as its argument and returns an array of all its factors.

Examples
factorize(12) ➞ [1, 2, 3, 4, 6, 12]

factorize(4) ➞ [1, 2, 4]

factorize(17) ➞ [1, 17]
Notes
The input integer will be positive.
A factor is a number that evenly divides into another number without leaving a remainder. 
The second example is a factor of 12, because 12 / 2 = 6, with remainder 0.

=end

class Factorize
  def factors(number)
    result = Array.new
    for i in 1..number do
      if i*i>number
        break
      end   
      if number%i == 0
        result.push(i)
        if(i != number/i)
          result.push(number/i)
        end
      end
    end
    p result.sort
  end
end   

factor1 = Factorize.new
factor1.factors(121)       	
