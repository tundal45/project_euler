# Project Euler
# Problem 1
#
# Description: If we list all the natural numbers below 10 that are multiples   
#              of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 
#              23. Find the sum of all the multiples of 3 or 5 below 1000.
#
# URL:         http://projecteuler.net/index.php?section=problems&id=1

sum = 0

1.upto(1000) do |num|
  sum += num if (num % 3 == 0 or num % 5==0)
end

puts "The sum of all the natural numbers below 1000 that are multiples of 3 or 5 is #{sum}"
