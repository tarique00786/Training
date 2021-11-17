class Arithmetic
	def add(a,b)
		puts "Addition is: #{ a+b}"
	end	
	def minus(a,b)
		puts "subtraction is: #{a-b} "
	end	
	def multiply(a,b)
		puts "multiplication is: #{a*b}"
	end	
	def divide(a,b)
		puts "Quotents is: #{a/b}"
	end
	def remainder(a,b)
		puts "Remainder is: #{a%b}"
	end
end		

obj1=Arithmetic.new()
obj1.add(10,20)
obj1.minus(10,20)	
obj1.multiply(10,20)
obj1.divide(10,20)
obj1.remainder(10,20)			
