class FilterString
  def integerOnly(arr)
    arr1=Array.new
    n=arr.size
    for i in 0...n do
      if arr[i].class==Integer  #Compares the class of every array element with Integer class
      	arr1.push(arr[i])       #Append array element in the end of arr1
      end
    end
   p arr1
  end
end
puts "Only integers from given array are: "
obj1=FilterString.new
obj1.integerOnly([2,3,"aman","tarique","0",0,1])    
      	

