module SayHello
  def sayhello
    puts "Hello #{@name}"
  end
end

class Person
  def initialize name
    @name = name
  end
end

person1=Person.new "Aziz"
person1.extend SayHello             #Extending the module with object 
person1.sayhello                    #Calling the method of module with object


=begin

output:

Hello Aziz

=end 
