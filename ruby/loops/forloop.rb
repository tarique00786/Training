class Sum
  sum=0
  for i in 1 .. 5  #range will be 1 to 5 including 5
    sum += i
  end
  puts sum
  sum1=0
  for i in 1 ... 5  #range will be 1 to 4 (Excluding 5)
    sum1 += i
  end
  puts sum1
end      	