a=[0,5]
begin
  puts a[a]
  #num = 10/0	
rescue ZeroDivisionError =>e 
  puts e
rescue TypeError =>e
  puts e 
ensure
  puts "End program"  
end  	

=begin

output:

no implicit conversion of Array into Integer
End program

=end