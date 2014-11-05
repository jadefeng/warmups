puts "How many prime numbers do you want?"
number = gets.chomp.to_i
primeArray = []

def factors(n)
	factors = []
	(1..n).each do |factor|
		factors << factor if (n % factor == 0)
	end
	return factors
end

def is_prime(n)
	if factors(n).count > 2
		return true
	end
	return false
end

# This does not work. Should use the Sieve Method instead
n = 0
until (primeArray.length == number) 
	n += 1
	primeArray << n if is_prime(n)
end

puts primeArray

## Solution:
require 'prime'

# prime_array = Prime.first 10001

# puts prime_array[prime_array.length - 1] 		## 104743

class Prime
	def self.nth(n)
		Prime.first(n).last 	# Gets the first n primes and gets the last one
	end
end

