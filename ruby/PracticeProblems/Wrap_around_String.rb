class Wrap_around
  def wrapping(str,n)
    str_size=str.size
    n=n%str_size
    ans=str[n..-1]+str[0...n]
    puts ans
  end  
end

obj=Wrap_around.new
obj.wrapping("Hi ruby is fun to learn",3)    	

