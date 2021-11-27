=begin

Subset Validation
Write a function that returns true if all subsets in a list belong to a given set.

Examples
validate_subsets([[1, 2], [2, 3], [1, 3]], [1, 2, 3]) ➞ true

validate_subsets([[1, 2, 3], [2], [3], []], [1, 2, 3]) ➞ true

validate_subsets([[1, 2], [2, 3], [1, 4]], [1, 2, 3]) ➞ false

validate_subsets([[1, 2, 3, 4]], [1, 2, 3]) ➞ false

=end

class SubsetValidation
  def check(arr1,arr2)
    valid=Array.new
    n=arr2.size
    for i in 0..n do
      comb=arr2.combination(i).to_a	    #Creates combination of 0,1,2....till size of array
      valid.push(comb)              #Push element at the end of array
    end
    j=0
    while valid.flatten(1).include?(arr1[j])  #Checks if arr1 includes the valid subsets 
      j +=1
    end  
    if j==arr1.size
      return true
    else
      return false    
    end  	
  end
end      	
obj=SubsetValidation.new
puts obj.check([[1, 2], [2, 3], [1, 4]], [1, 2, 3])    	