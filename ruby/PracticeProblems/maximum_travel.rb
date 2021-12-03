=begin
Maximum Travel Distance
Write a function that takes fuel (liters), fuel_usage (liters/100km), passengers, air_con (boolean) and 
returns maximum distance that car can travel.

fuel is the number of liters of fuel in the fuel tank.
fuel_usage is basic fuel consumption per 100 km (with the driver inside only).
Every additional passenger is increasing basic fuel consumption by 5%.
If the air conditioner is ON true, its increasing total (not basic) fuel consumption by 10%.

Examples
total_distance(70.0, 7.0, 0, false) ➞ 1000.0

total_distance(36.1, 8.6, 3, true) ➞ 331.8

total_distance(55.5, 5.5, 5, false) ➞ 807.3

Notes

fuel and fuel_usage are always greater than 1.
passengers are always greater or equal to 0.
Round your answer to the nearest tenth.

=end

class MaxDistance
  def travel(fuel,fuel_usage,passengers,air_condition)

    #every additional passenger increasing fuel consumption by 5%.
    consumption = 1 + 0.05*passengers

    #Calculating the number of litres spent 
    fuelcount = fuel_usage*consumption

    #if aircondition is true, increase consumption by 10%
    if air_condition
      fuelcount *= 1.1
    end

    #Calculating the distance travelled
    total_travel = (fuel/fuelcount)*100

    #Rounding the result to nearest 10
    return total_travel.round(1)
  end
end 

maxdistance=MaxDistance.new
puts maxdistance.travel(70.0,7.0,0,false)    
