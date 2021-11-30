File.open("test.txt","w") do |file|
  #Write method will overwrite the previous content of the file.	
  file.write("If you are enthusiastic about learning new things then you should join Beryl Systems")
end  	

=begin

====Creation of a new file with content====== 

File.open("filename.extension","w") do |file|
  file.write(content)
end 

====append text at the last of the file======

File.open("filename","a") do |file|
  file.write(content)
end  	





