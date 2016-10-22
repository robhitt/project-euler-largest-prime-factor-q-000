
def is_prime?(num)
	prime_num = (2..(num-1)).none? {|n| num % n == 0}
	return prime_num
end

def find_all_primes_of(num)
	prime_array = []

	(2..(num-1)).each do |curr_number_to_check|
		if is_prime?(curr_number_to_check)
			prime_array << curr_number_to_check
		end
	end
	prime_array
end

def divisble_prime_factors(num)
	array_of_primes = find_all_primes_of(num)

	prime_factor_array = []

	array_of_primes.each do |prime_num|
		if num % prime_num == 0
			prime_factor_array << prime_num
		end
	end
	return prime_factor_array
end

def largest_prime_factor(num)
	prime_arr = divisble_prime_factors(num)
	return prime_arr.last
end
