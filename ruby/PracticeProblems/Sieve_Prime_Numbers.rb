class Seive
  def PrimeNumber(n)
    primes=(0..n).to_a            #Fill the numbers from 0 to n in primes array
    primes[0]=primes[1]=nil
    for i in 0...n
      if primes[i]
        break if i*i>n
        (i*i).step(n,i){|j| primes[j]=nil}
      end
    end
    puts "Prime numbers till #{n} are #{primes.compact}"        #Remove every nil value from the array
  end
end

obj=Seive.new
obj.PrimeNumber(25)      	
