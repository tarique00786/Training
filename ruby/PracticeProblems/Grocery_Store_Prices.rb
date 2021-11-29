=begin

Grocery Store Prices
You are given an array of strings consisting of grocery items, with prices in parentheses. Return an array of prices in float format.

Examples
get_prices(["ice cream ($5.99)", "banana ($0.20)", "sandwich ($8.50)", "soup ($1.99)"]) ➞ [5.99, 0.2, 8.50, 1.99]

get_prices(["salad ($4.99)"]) ➞ [4.99]
Notes
See if you can use RegExp to solve (but it's not necessary)

=end

class GroceryStore
  def price(arr)
    answer=""  
    arr.each do |i|
      #finding the index of $  
      cost=i.index("$")+1
      #Adding the price into answer string 
      while i[cost]!=")"
        answer+=i[cost].to_s  
        cost += 1
      end
      #Adding , after every price
      answer += "," 
    end
    #Separating the string on the basis of , and save into result array
    result=answer.split(",")
    #Converting all string value into float 
    p result.collect! {|value| value.to_f}
  end
end

price1=GroceryStore.new
price1.price(["ice cream ($5.99)", "banana ($0.20)", "sandwich ($8.50)", "soup ($1.99)"])       