=begin
	
Extending the Array Class
Write the following functions to extend the array class, by adding the methods:

square()
cube()
divisible_by(x)
strictly_above(x)
strictly_below(x)
Examples
[1, 2, 3].square ➞ [1, 4, 9]

[1, 2, 3].cube ➞ [1, 8, 27]

[1, 2, 3, 4].divisible_by(2) ➞ [2, 4]

[1, 2, 3, 4].strictly_above(1) ➞ [2, 3, 4]

[1, 2, 3, 4].strictly_below(2) ➞ [1]
	
=end

class Extendarray
  def square(arr)
    return arr.map{|e| e*e}
  end 
  def cube(arr)
    return arr.map{|e| e*e*e}
  end 
  def divisible_by(arr,n)
    return arr.select{|e| e%n==0}
  end 
  def strictly_above(arr,n)
    return arr.select{|e| e>n}
  end 
  def strictly_below(arr,n)
    return arr.select{|e| e<n}
  end 
end 

p obj=Extendarray.new
p obj.square([1, 2, 3])
p obj.cube([1, 2, 3])
p obj.divisible_by([1, 2, 3, 4],2)
p obj.strictly_above([1, 2, 3, 4],1)
p obj.strictly_below([1, 2, 3, 4],2)