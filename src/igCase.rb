string = 'Jack and Jill went up the hill, to fetch a pail of water.'

noPunc = string.gsub(/[,\.]/," ")
noPuncArray = noPunc.split(" ")
sorted = noPuncArray.sort{ |x,y| x.casecmp(y) }
puts sorted
