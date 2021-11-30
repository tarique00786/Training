begin
  puts "Before raising an exception"
  #This will directly jump on to the rescue clause
  raise "An error occured"
  puts "After the raise"
rescue
  puts "Rescued here"
ensure
  puts "End here"
end      

=begin

output:

Before raising an exception
Rescued here
End here

=end