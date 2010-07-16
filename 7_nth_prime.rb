# Project Euler
# Problem 7
#
# Description: By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
#              we can see that the 6th prime is 13. What is the 10001st prime 
#              number?
#
# URL:         http://projecteuler.net/index.php?section=problems&id=7

# Functions borrowed from Problem # 3
def factorize(number)
  factor = 2
  factors = []
  while factor <= number
    while (number % factor).zero?
      number = number/factor
      factors << factor
    end
    factor = factor + 1
  end
  factors
end

def prime?(number)
  factorize(number).size == 1 ? true : false
end

def nth_prime(n)
  count = 0
  number = 1
  while count < n
    count = count + 1 if prime?(number)
    number = number + 1
  end
  number-1
end

 start_time = Time.now
 puts "The 10001st prime is #{nth_prime(10001)}"
 puts "Calculation took #{Time.now - start_time} seconds"
