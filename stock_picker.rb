#example:  stock_picker([17,3,6,9,15,8,6,1,10])
#  => [1,4]  # for a profit of $15 - $3 == $12

#start by determining the first day to buy
	#starting with the first, compare the profit margin (difference) between the first day and the following days
		#continue to compare profits between the first day and the other days
		#log each date pair and its profit margin. don't change it unless there's a pair date with a larger profit margin
	#return the date pair

