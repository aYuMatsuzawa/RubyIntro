def fizzbuzz(n)
	if n % 3 == 0 && n % 5 == 0
		puts 'FizzBuzz'
	elsif n % 3 == 0
		puts 'Fizz'
	elsif n % 5 == 0
		puts 'Buzz'
	else
		puts n
	end
end

def fzbz(n)
	puts (out = (n % 3 == 0 ? 'Fizz' : "") + (n % 5 == 0 ? 'Buzz' : "" )).empty? ? n : out
#	puts n % 15 == 0 && 'FizzBuzz' || n % 3 == 0 && 'Fizz' || n % 5 == 0 && 'Buzz' || n
end

(1 .. 20).each do |n|	# starts at 1, ends at 20
#20.times do |n|			# starts at 0, ends at 19
#	fizzbuzz(n)
	fzbz(n)
end

