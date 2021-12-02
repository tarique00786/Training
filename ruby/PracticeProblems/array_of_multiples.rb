=begin

Array of Multiples
Create a function that takes two numbers as arguments (num, length) and returns an array of multiples of num until the array length reaches length.

Examples
array_of_multiples(7, 5) ➞ [7, 14, 21, 28, 35]

array_of_multiples(12, 10) ➞ [12, 24, 36, 48, 60, 72, 84, 96, 108, 120]

array_of_multiples(17, 6) ➞ [17, 34, 51, 68, 85, 102]
Notes
Notice that num is also included in the returned array.

=end

class Multiples
  def arrymultiples
    puts "Enter number for which you want to multiples: "
    number=gets.to_i
    puts "Enter how many multiples you want: "
    num=gets.to_i
    a=Array.new(num,1)
    a.map!.with_index{|element,i| number*(i+1)} #Multiply given number with (index+1) to store the multiples
    return a
  end
end

multiple1=Multiples.new
p multiple1.arrymultiples 



=begin

output:
Enter number for which you want to multiples: 
25
Enter how many multiples you want: 
26
[25, 50, 75, 100, 125, 150, 175, 200, 225, 250, 275, 300, 325, 350, 375, 400, 425, 450, 475, 500, 525, 550, 575, 600, 625, 650]

=end  	