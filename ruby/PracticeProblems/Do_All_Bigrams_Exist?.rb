class Bigrams
  def allexists(arr1,arr2)
  	result=false
    ans=arr2.join   #joins all the elements in array in string 
    #puts ans.class
    puts arr1.all? { |e| ans.include?(e)  }  #check if all the elements in arr1 is present in ans 
  end
end
obj=Bigrams.new
obj.allexists(["oo", "mi", "ki", "la"], ["milk", "chocolate", "cooks"])      
