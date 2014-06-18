# Write a program which prints the numbers from 1 to N, each on a new line. But for multiples of three print “Fizz” instead of the number 3 and for the multiples of five print “Buzz”.  For numbers which are multiples of both three and five print “FizzBuzz”. Read in the input number from STDIN.
# Sample Input #00:
# 15
# Sample Output #00 :

def FizzBuzz(n)
  for i in 1..n
    if i % 15 == 0
      puts "FizzBuzz"
    elsif (i % 5 == 0) 
      puts "Buzz"
    elsif (i % 3 == 0) 
      puts "Fizz"
    else 
      puts i
    end
  end
end


FizzBuzz(20)
 
