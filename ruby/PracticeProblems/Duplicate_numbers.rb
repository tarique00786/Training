=begin
	
Return Duplicate Numbers
Given an array nums where each integer is between 1 and 100, return a sorted array containing only duplicate numbers from the given nums array.

Examples
duplicate_nums([1, 2, 3, 4, 3, 5, 6]) ➞ [3]

duplicate_nums([81, 72, 43, 72, 81, 99, 99, 100, 12, 54]) ➞ [72, 81, 99]

duplicate_nums([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) ➞ nil
	
=end

class DuplicateNumbers
  def selectduplicates(arr)
    #creating a new hash 
    dhash=Hash.new(0)
    #maintaining the hash of array where key is arr element and value is occurences of elemnt
    arr.each {|element| dhash[element] += 1}
    #Creating array for storing the duplicates values
    answer =[]
    dhash.each {|k,v| answer.push(k) if v>1}
    p answer.sort 	
  end     	
end

obj=DuplicateNumbers.new
obj.selectduplicates([81, 72, 43, 72, 81, 99, 99, 100, 12, 54]) 	
