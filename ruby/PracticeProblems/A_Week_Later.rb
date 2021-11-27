=begin

A Week Later
Create a function which takes in a date as a string, and returns the date a week after.

Examples
week_after("12/03/2020") ➞ "19/03/2020"

week_after("21/12/1989") ➞ "28/12/1989"

week_after("01/01/2000") ➞ "08/01/2000"

=end

class DateafterWeek
  def nextweekdate(date)
  	require 'date'   #You have to add it before using date in ruby
    puts t=Date.parse(date)+7        #It will parse the date 
  end
end

obj=DateafterWeek.new
obj.nextweekdate ("10/10/2010")  	
