#example:  stock_picker([17,3,6,9,15,8,6,1,10])
#  => [1,4]  # for a profit of $15 - $3 == $12

#start by determining the first day to buy
	#starting with the first, compare the profit margin (difference) between the first day and the following days
		#continue to compare profits between the first day and the other days
		#log each date pair and its profit margin. don't change it unless there's a pair date with a larger profit margin
	#return the date pair

def stock_picker(data) 
	day1 = 0
	while day1 < data.length - 1
		day2 = day1 + 1	
		while day2 < data.length
			profit ||= 0 #initialize profit at 0
			if data[day2] - data[day1] > profit
				profit = data[day2] - data[day1]
				sellDate = day2
				buyDate = day1
			end
			day2 += 1
		end
		day1 += 1
	end
	return [buyDate, sellDate] 
end 

data1 = [17,3,6,9,15,8,6,1,10]
data2 = [1, 10, 2, 2, 4, 5, 15]

p stock_picker(data2)