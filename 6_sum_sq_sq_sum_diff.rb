# Project Euler
# Problem 6
#
# Description: The sum of the squares of the first ten natural numbers is,
#              12 + 22 + ... + 102 = 385
#              The square of the sum of the first ten natural numbers is,
#              (1 + 2 + ... + 10)2 = 552 = 3025
#
#              Hence the difference between the sum of the squares of the 
#              first ten natural numbers and the square of the sum is 
#              3025 - 385 = 2640. Find the difference between the sum of 
#              the squares of the first one hundred natural numbers and 
#              the square of the sum.
#
# URL:         http://projecteuler.net/index.php?section=problems&id=6

sum_sq = 0
sq_sum = 0

1.upto(100) do |num|
  sum_sq += num*num
  sq_sum += num
end

puts "The difference between the sum of the squares of the first #{iterations} natural numbers and the square of the sum is #{(sq_sum*sq_sum) - sum_sq}"
