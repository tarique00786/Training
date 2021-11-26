=begin
	
Unlucky Years
Create a function which returns how many Friday 13ths there are in a given year.

Examples
how_unlucky(2020) ➞ 2

how_unlucky(2026) ➞ 3

how_unlucky(2016) ➞ 1
	
=end

class Unlucky_Years
  def friday(year)
  	fridaycount=0
  	for i in 1..12 do
  	  if Time.new(year,i,13).friday?
  	    fridaycount += 1
  	  end
  	end  
  	puts fridaycount  	
  end
end

obj=Unlucky_Years.new
obj.friday(2026)        	