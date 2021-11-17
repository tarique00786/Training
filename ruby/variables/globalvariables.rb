$a=20
class Global
	def printglobal
		puts "Value of global variable in printglobal is #$a"
	end
end

class Global1
	def printglobal1
		puts "Value of global variable in printglobal2 is #$a"
	end
end

class1obj=Global.new
class1obj.printglobal
class2obj=Global1.new
class2obj.printglobal1				