=begin

How Many Days Until 2021?
Given a date, return how many days date is away from 2021 (end date not included). date will be in mm/dd/yyyy format.

Examples
days_until_2021("12/28/2020") ➞ "3 days"

days_until_2021("1/1/2020") ➞ "366 days"

days_until_2021("2/28/2020") ➞ "308 days"

=end

class Until2021
  def daysleft(str)
    require 'time'
    time=Time.parse(str).to_date       #Parse the given date and save only date in time variable 
    last=Time.parse("01/01/2021").to_date    #Parse the last date  
    puts (last-time).to_i   #Takes the integer difference of dates
  end
end

obj=Until2021.new
obj.daysleft("20/12/2009")    

