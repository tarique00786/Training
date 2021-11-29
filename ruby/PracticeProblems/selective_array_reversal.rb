=begin

Selective Array Reversal
Create a function that takes an array and a number and selectively reverse the order of the array based on the number you're given (second argument). If you're given the arguments [1,2,3,4,5,6] and 2, you would return the array [2,1, 4,3, 6,5].

Examples
sel_reverse([1,2,3,4,5,6], 2) ➞ [2,1, 4,3, 6,5]

sel_reverse([2,4,6,8,10,12,14,16], 3) ➞ [6,4,2, 12,10,8, 16,14]

sel_reverse([5,7,2,6,0,4,6], 100) ➞ [6,4,0,6,2,7,5]
Notes
If the list you're given can't be broken up into equal parts, just reverse the remaining numbers (see 2nd expample).
If len exceeds the list length, reverse everything.
If len is zero, return the original list.

=end

class SelectiveReversal
  def sreverse(arr,n)
  	#Return original aray if n is 0
    return arr if n==0
    #Return reverse array if n is greater than size of array
    return arr.reverse if n>arr.size
    answer=Array.new
    #Step by given n and pushing this array in answer array
    for i in (0...arr.size).step(n) do
      answer.push(arr[i...i+n].reverse)
    end
    #Removing all the layers of this array
    return answer.flatten
  end
end

reverse1=SelectiveReversal.new
p reverse1.sreverse([2,4,6,8,10,12,14,16], 3) 



