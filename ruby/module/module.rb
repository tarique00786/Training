module Tools
  def sayhello(name)
    puts "hello #{name}"
  end
  
  def saybye(name)
    puts "bye #{name}"
  end
end

include Tools
Tools.sayhello("tarique")
Tools.saybye("aziz")      	