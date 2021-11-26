=begin

Recursion: String Palindromes
Write a function that recursively determines if a string is a palindrome.

Examples
palindrome("abcba") ➞ true

palindrome("b") ➞ true

palindrome("") ➞ true

palindrome("ad") ➞ false

=end

class Palindrom
  def stringpalindrom(str)
  	left=0
  	right=str.size()-1
  	if left>=right
  	  return true
  	else
  	  return ((str[left] == str[right]) && stringpalindrom(str[left+1..right-1]))
  	end
  end
end

obj=Palindrom.new
puts obj.stringpalindrom("MAAM")


