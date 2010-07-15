# Project Euler
# Problem 5
#
# Description: 2520 is the smallest number that can be divided by 
#              each of the numbers from 1 to 10 without any remainder.
#              What is the smallest number that is evenly divisible by 
#              all of the numbers from 1 to 20?
#
# URL: http://projecteuler.net/index.php?section=problems&id=5
#
# Notes: Previously, I had used the brute force method to calculate the
#        answer but when I went back to the script to run it again, I 
#        realized that it was horribly inefficient and thought based on
#        what the site says, there had to be a better solution. I kind of
#        cheated and went to the forum to see this solution that makes use
#        of the rational library. The idea here is that rather than check
#        an arbitrary number if it is divisible by 1 through 20 and to keep
#        incrementing the number to check until we find the right one, we 
#        just calculate the Lowest Common Multiple of 1 & 2 & calculate LCM
#        of the result & 3 and so on until we exhaust 20. The resulting number
#        is the smallest number divisible by 1 through 20.

require 'rational'

def lcm(a,b)
  
end

def smallest_number_divisible_by(start, stop)
  divisors = (start..stop).to_a
  divisors.inject(divisors.shift) { |num, n| num.lcm(n)}
end

puts smallest_number_divisible_by(1,20)
