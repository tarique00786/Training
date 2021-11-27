=begin

The Major Sum
Create a function that takes an integer array and return the biggest between positive sum, negative sum, or 0s count. 
The major is understood as the greatest absolute.

l = [1,2,3,4,0,0,-3,-2], the function has to return 10, because:

Positive sum = 1+2+3+4 = 10
Negative sum = (-3)+(-2) = -5
0s count = 2 (there are two zeros in array)
Examples
major_sum([1, 2, 3, 4, 0, 0, -3, -2]) ➞ 10

major_sum([-4, -8, -12, -3, 4, 7, 1, 3, 0, 0, 0, 0]) ➞ -27

major_sum([0, 0, 0, 0, 0, 1, 2, -3]) ➞ 5
# Because -3 < 1+2 < 0sCount = 5

=end

class Major_sum
  def msum(arr)
    psum=0
    nsum=1
    zero=0
    size=arr.size
    for i in 0...size
      if arr[i]>0
        psum+=arr[i]
      elsif arr[i]<0
      	nsum+=arr[i]
      else
        zero+=1;
      end
    end
    puts "Major sum is: #{[psum,nsum,zero].max}"   #find maximum of given values
  end      	
end

obj=Major_sum.new
obj.msum([1, 2, 3, 4, 0, 0, -3, -2])