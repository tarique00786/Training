=begin

Tree Photography
Heading off to the Tree Arboretum of Various Heights, I bring along my camera to snap up a few photos. 
Ideally, I'd want to take a picture of as many trees as possible, but the taller trees may cover up the shorter trees behind it.

A tree is hidden if it is shorter or the same height as the tree in front.

Given a list of tree heights, create a function which returns "left" or "right", depending on which side allows me to see 
as many trees as possible.

Worked Example
tree_photography([1, 3, 1, 6, 5]) ➞ "left"
# If I stand on the left, I can see trees of heights 1, 3 and 6.
# If I stand on the right, I can see trees of heights 5 and 6.
# Return "left" because I would see more trees.
Examples
tree_photography([5, 6, 5, 4]) ➞ "right"

tree_photography([1, 2, 3, 3, 3, 3, 3]) ➞ "left"

tree_photography([3, 1, 4, 1, 5, 9, 2, 6]) ➞ "left"

=end

class Tree
  def photography(arr)
  	n=arr.size
    leftmax=arr[0]
    rightmax=arr[n-1]
    left=1
    right=1
    for i in 1...n do
      if arr[i]>leftmax
        left+=1
        leftmax=arr[i]
      end
    end 
    for i in n-1..1 do
      if arr[i]>rightmax
        right+=1
        rightmax=arr[i]
      end
    end 
    puts left
    puts right
    if(left>right)
      puts "left"
    else
      puts "right"
    end    	
  end
end

obj=Tree.new
obj.photography([5, 6, 5, 4])       	
