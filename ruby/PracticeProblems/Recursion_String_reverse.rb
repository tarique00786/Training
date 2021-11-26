class ReverseString
  def recursionreverse(str)
    if str.empty?         #Checks if string is empty , base case
      return ''
    else
      str[-1]+recursionreverse(str.chop)     #chop method will removes the last character 
    end
  end
end

obj=ReverseString.new
puts obj.recursionreverse("Ruby is fun to learn")        	