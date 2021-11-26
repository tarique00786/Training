=begin

Broken Keyboard
Given what is supposed to be typed and what is actually typed, write a function that returns the broken key(s). The function looks like:

find_broken_keys(correct phrase, what you actually typed)
Examples
find_broken_keys("happy birthday", "hawwy birthday") ➞ ["p"]

find_broken_keys("starry night", "starrq light") ➞ ["y", "n"]

find_broken_keys("beethoven", "affthoif5") ➞ ["b", "e", "v", "n"]
	
=end


class Broken_Board
  def keyboard(str1,str2)
  	answer=Array.new
    str_size=str1.size
    for i in 0...str_size
      if str1[i]!=str2[i]
        answer.push(str1[i])
      end
    end
    p answer.uniq        #Omits only unique value from array
  end
end

obj=Broken_Board.new
obj.keyboard("starry night", "starrq light")        	
