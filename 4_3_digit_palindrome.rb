# Project Euler
# Problem 4
#
# Description: A palindromic number reads the same both ways. The largest
#              palindrome made from the product of two 2-digit number is
#              9009 = 91 X 99. Find the largest palindrome made from the 
#              product of two 3-digit numbers.
#
# URL:         http://projecteuler.net/index.php?section=problems&id=4

max = 0
100.upto(999) do |a|
  a.upto(999) do |b|
    prod = a*b
    max = [max, prod].max if prod.to_s == prod.to_s.reverse
  end
end

puts "The highest palindrome of two 3 digit number is #{max}"
