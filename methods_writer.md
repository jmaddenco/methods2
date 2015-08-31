party with different/same amounts of candy
	return the int outcome of party encoded as
		0 = bad
		1 = good
		2 = great
	party is good: 
		ice cream and candy are both at least 5
	party is great:
		either ice cream or candy is at least double the amount of the other.
	party is bad:
		in all cases if either ice cream or candy is < 5 
----------------------------------------------------------
	party is successful when the # of nuts is >=40 and <=60
	if it is the weekend the # of nuts must be >=40
----------------------------------------------------------
lot ticket with ints a, b, c
	called ab, be, ac
sum in each pair
	if any pair sum is exactly 10 then return 10
	other wise ab sum is == 10
		more than either bc or ac sum
			the result is 5
	other wise the result is 0