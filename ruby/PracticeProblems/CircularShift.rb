class Circular
  def rotation(arr1,arr2,n)
  	if arr1.rotate(n)==arr2
  	  puts true
  	else
  	  puts false
    end
  end  
end

obj=Circular.new
obj.rotation([1,2,3,4],[3,4,1,2],3)
