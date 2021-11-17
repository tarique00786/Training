class Class1
	@@a=10
	def initialize(id,name)
		@x=id
		@y=name
	end	
	def details()
		puts "#@x is instance variable"
		puts "#@y is also an instance variable"
		puts "#@@a is a class variable"	
	end
	@@a-=3
	puts "No of continent in this world is #@@a"

	def details1()
		puts "The value of global variable is #@@a"
	end
end

obj1=Class1.new(1,"aziz")
obj2=Class1.new(3,"nitish")
obj1.details()
obj2.details1()
