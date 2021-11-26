=begin
Match the Last Item
Create a function that takes an array of items and checks if the last item matches the rest of the array concatenated together.

Examples
match_last_item(["rsq", "6hi", "g", "rsq6hig"]) ➞ true
# The last item is the rest joined.

match_last_item([1, 1, 1, "11"]) ➞ false
# The last item should be "111".

match_last_item([8, "thunder", true, "8thundertrue"]) ➞ true

=end

class MatchLast
  def matching(arr)
    arr_size=arr.size
    s=""
    for i in 0...arr_size-1 do
      s += arr[i].to_s
    end
    puts arr[-1]==s
  end
end
obj=MatchLast.new
obj.matching(["rsq", "6hi", "g", "rsq6hig"])      	

