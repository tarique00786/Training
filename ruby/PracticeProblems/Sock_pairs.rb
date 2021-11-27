=begin

Sock Pairs
Joseph is in the middle of packing for a vacation. He's having a bit of trouble finding all of his socks, though.

Write a function that returns the number of sock pairs he has. A socks pair consists of two of the same letter, such as "AA". 
The socks are represented as an unordered sequence.

Examples
sock_pairs("AA") ➞ 1

sock_pairs("ABABC") ➞ 2

sock_pairs("CABBACCC") ➞ 4

=end

class SockPairs
  def Pairs(str)
    arr=str.split(//)   #Split the string character wise
    hasharr=arr.tally   #Create the hash where key will be character and value will be occurences of that character
    sum=0
    hasharr.each do |k,v|
      if sum+=v/2
      end
    end
    puts sum    
  end 
end

obj=SockPairs.new
obj.Pairs("AABBDDc")   
