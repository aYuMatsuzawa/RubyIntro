hundred = (1..100).to_a

def is_prime(n)
	2.upto(Math.sqrt(n)) { |delim| return false if n % delim == 0 }
	return n == 1 ? false : true
end

puts hundred.select { |elem| is_prime(elem) }
