=begin
Instances of the Fibonacci Sequence
Create a function that takes a number as an argument and returns n instances of the Fibonacci sequence as an array.

Fibonacci numbers: F(n) = F(n-1) + F(n-2) with F(0) = 0 and F(1) = 1. So the easy explanation is: The next element is the sum of the two previous elements.

If you want to read more about this sequence, take a look at the On-Line Encyclopedia of Integer Sequences. Fibonacci numbers are strongly related to the golden ratio. See the OEIS and Wikipedia links in the resources tab.

Examples
fib_seq(4) ➞ [0, 1, 1, 2]

fib_seq(7) ➞ [0, 1, 1, 2, 3, 5, 8]

fib_seq(0) ➞ []

=end

class FibonacciInstances
  def instance(n)
    fib=Array.new(n,0)
    fib[0]=0
    fib[1]=1
    for i in 2..n do
      fib[i]=fib[i-1]+fib[i-2]
    end
    p fib  
  end
end

obj=FibonacciInstances.new
obj.instance(4)    	
