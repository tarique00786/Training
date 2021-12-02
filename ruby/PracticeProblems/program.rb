class Berylsystems
  def printname(n)
    arr = Array.new(n)
        puts "enter name here"
        for i in 0...n do 
            name = gets.chomp
            arr[i] = name
        end
        for i in 0...n do
            arr[i] += "Berylsystems"
        end   
        p arr
    end
end

obj1 = Berylsystems.new
obj1.printname(5)     
