=begin

Longest Word
Write a function that finds the longest word in a sentence. If two or more words are found, return the first longest word. Characters such as apostophe, comma, period (and the like) count as part of the word (e.g. O'Connor is 8 characters long).

Examples
longest_word("Hello darkness my old friend.") ➞ "darkness"

longest_word("Hello there mate.") ➞ "Hello"

longest_word("Margaret's toy is plastic.") ➞ "Margaret's"

=end

class Longest
  def word(str)
    answer=Array.new
    arr=str.split(" ")
    #return arr
    max=arr[0].size
    answer[0]=arr[0]
    #return max
    for i in 1...arr.size do
      if arr[i].size>max
        answer[0]=arr[i]
        max=arr[i].size	
      end
    end  
    return answer[0]
  end
end

maxword=Longest.new
p maxword.word("Margaret's toy is plastic.")    
