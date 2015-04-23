string = 'Jack and Jill went up the hill, to fetch a pail of water.'

# sort out punctuations. destructively written cuz why not
string.gsub!(/[,\.]/," ")
# convert into space-splitted array, sorted by element size, stdout
puts string.split(" ").sort{ |x,y| x.size <=> y.size } 
