=begin

Algorithms II: The Euclidean Algorithm
Welcome to part two of the collection for Computer Science Algorithms. This challenge will deal further with writing 
recursive functions by covering the Euclidean Algorithm. The "Euclidean Algorithm" is a method for finding the greatest 
common divisor (GCD) of two numbers. It was originally described by the Greek mathematician Euclid.

Algorithm
For the sake of simplicity I'll refer to the first number as "a", the second number as "b", and the remainder as "r". 
The algorithm can be broken down into four steps:

Ensure that "a" >= "b". If "a" < "b", swap them.
Find the remainder. Divide "a" by "b" and set "r" as the remainder.
Is "r" zero? If so terminate the function and return "b" (the second number).
Set "a" = "b" and "b" = "r" and start the algorithm over again.
Instructions
Create a recursive function that returns the GCD between two positive numbers using the Euclidean Algorithm.

Examples
euclidean(8, 6) ➞ 2

euclidean(25, 5) ➞ 5

euclidean(49, 14) ➞ 7

=end

class Uclideangcd
  def uclidean(a,b)
    a,b = b,a if a<b    #Swap the values if b is greater than a
    remainder=a%b                 #Calculate the remainder     
    puts remainder==0?b : uclidean(b,remainder)
  end  	
end 

obj1=Uclideangcd.new
obj1.uclidean(12,18) 
