class Animal
  def say_hi(x)
    puts "hello #{x}"
  end
end

class Lion<Animal                              #Inherrited from Animal class
  def say_hi(x)
    puts "grrrrr #{x}"                         #Adds its own functionality
    super("Aman")                              #Call the parent method with this arguement
  end
end

Lion.new.say_hi("Aziz")


=begin

grrrrr Aziz
hello Aman


=end