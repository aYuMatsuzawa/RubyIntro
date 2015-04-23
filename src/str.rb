string = 'Jack and Jill went up the hill, to fetch a pail of water.'

# puts string.length

# puts string.split(' ').length

lCase_string = string.downcase

noPunc_lCase_string = lCase_string.gsub(/[,\.]/, '')

puts noPunc_lCase_string

noPunc_lCase_array = noPunc_lCase_string.split(" ")
printf('{')
noPunc_lCase_array.each_index { |index|
	printf("\"" + noPunc_lCase_array.sort()[index] + "\"")
	printf(",") if index < noPunc_lCase_array.size() - 1
}
printf("}\n")
