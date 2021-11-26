class RemoveZeroes
  def trailingzeros(str)
    value=str.to_f          #converts string in floating point number
    arr=value.to_s.split(".")     #again converting into string and then splitting based on .
    if arr[1]=="0"
      arr.pop()                   #deletes the last element
    end
    puts arr.join(".")  	
  end
end
obj=RemoveZeroes.new
obj.trailingzeros("03.1400")        	