class FactorTractor
  def primeFactor(n)
    answer=Array.new
    for i in 2..n/2 do
      if n.gcd(i)==i
        answer.push(i)
      end
    end
    print answer
  end
end
obj=FactorTractor.new
obj.primeFactor(77)        
       
