=begin

To Adjust the Time
In this challenge, you have to add a variable amount of hours, minutes and seconds to a given time, obtaining, in turn, a new adjusted time.

Given a string now being a timestamp in the format hh:mm:ss, and three integers hrs, min and sec being the hours, minutes and seconds to add, implement a function that returns a string being the newly adjusted timestamp (maintaining the same format).

Examples
time_adjust("01:00:00", 1, 30, 10) ➞ "02:30:10"

time_adjust("18:22:30", 4, 60, 30) ➞ "23:23:00"

time_adjust("00:00:00", 72, 120, 120) ➞ "02:02:00"

=end

class AddTime
  def Add(str,hr,min,sec)
  	require 'time'
    time=Time.parse(str)+hr*3600+min*60+sec
    puts time.strftime("%H:%M:%S")
  end 
end

obj=AddTime.new
obj.Add("11:10:20",2,59,4)   	
