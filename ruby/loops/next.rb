# find the sum of odd numbers till 10

class Oddsum
  sum=0
  for i in 1 .. 10
    if i % 2==0  #Leave the i value where condition is true and move on next value
      next
    end  
    sum += i
  end
  puts sum 
end     	

