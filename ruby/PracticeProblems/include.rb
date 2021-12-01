module SayHello
  def sayhello
    puts "Hello #{@name}"
  end
end

class Person
  include SayHello                              #Including the SayHello module
  def initialize name
    @name = name
  end
end

person1=Person.new "Welcome to Beryl Systems"
person1.sayhello                                #Calling the method of module with object


=begin
output:

Hello Welcome to Beryl Systems

=end