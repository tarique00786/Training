class Fibonacci
  def NthFibbonaci(n)
    fib=(0..n).to_a
    fib[0]=0
    fib[1]=1
    for i in 2..n
      fib[i]=fib[i-2]+fib[i-1]	
    end 
    p fib[n]
  end
end     
puts "Enter a value to find fibonacci number"
value=gets.to_i 
print "#{value}th Fibonacci value is "
obj=Fibonacci.new
obj.NthFibbonaci(value)