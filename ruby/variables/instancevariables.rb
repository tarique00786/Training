class Beryl
	def initialize(id,name)
		#instance variables
		@a = id
		@b = name
	end
	def details1()
		puts "First variable is #@a"
		puts "Second variable is #@b"	
	end
end		

obj1 = Beryl.new(1,"aman")
obj1.details1()		