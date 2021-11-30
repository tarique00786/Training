begin 
  file=open("begin.rb")
  if file	
    puts "File exist"
  end
rescue
  fname="begin_rescue.rb"
  retry
end      	