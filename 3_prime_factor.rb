# Project Euler
# Problem # 3
#
# Description: The prime factors of 13195 are 5, 7, 13 and 29.
#              What is the largest prime factor of the number 600851475143 ?
#
# URL:        http://projecteuler.net/index.php?section=problems&id=2

def factorize(number)
  factor = 2
  factors = []
  while factor < number
    while (number % factor).zero?
      number = number/factor
      factors << factor
    end
    factor = factor + 1
  end
  factors
end

def prime?(number)
  factors = factorize(number)
  factors.uniq.size == 1 ? true : false
end

p factorize(600851475143)
