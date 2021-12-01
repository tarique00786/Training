class Animal
  def say_hi(x)
    puts "hello #{x}"
  end
end

class Lion<Animal                    #Inherrited from Animal class
  def say_hi(x)
    puts "grrrrr #{x}"               #Adds its own functionality
    super                            #Without any arguement it will take default value in child and parent class
  end
end

Lion.new.say_hi("Aziz")


=begin

grrrrr Aziz
hello Aziz

=end