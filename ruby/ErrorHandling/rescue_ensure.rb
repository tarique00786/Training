begin
  a=10/0
rescue TypeError =>e
  puts e
rescue ZeroDivisionError =>e
  puts e
#Ensure clause will always be execute despite rescue clause exeucted or not   
ensure
  puts "No error occured"
end  

=begin

output:

divided by 0
No error occured


=end