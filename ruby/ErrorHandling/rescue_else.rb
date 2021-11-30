begin
  a=10/5 
rescue TypeError =>e
  puts e
rescue ZeroDivisionErro =>e
  puts e
#if no rescu clause executed in program then else will be executed   
else
  puts "No error occured"
end      

=begin

output:

No error occured


=end
