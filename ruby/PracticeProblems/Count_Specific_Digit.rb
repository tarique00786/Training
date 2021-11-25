class Countdigit
  def specificdigit(n1,n2,n)
    answer=Array.new
    for i in (n1..n2).to_a do
      if i.to_s.include?(n.to_s) #convert every integer in string and checking if value is present or not
        answer.push(n)  #append value at end
      end   
    end
    p answer.size
  end      
end
obj=Countdigit.new
obj.specificdigit(100,200,1)