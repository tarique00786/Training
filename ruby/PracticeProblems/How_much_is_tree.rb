class How_much
  def counttree()
  	puts "Enter the length of array\n"
  	n=gets.to_i                      #takes integer user input
	arr=Array.new
	puts "Enter your arrays values 0 or 1: "
	for i in 0...n do
	  value=gets.to_i
	  arr[i]=value
	  #puts "#{arr[i]}"
	end  
    puts "Number of trees are: #{arr.count(1)}"
  end
end

obj=How_much.new
obj.counttree()    	

	

