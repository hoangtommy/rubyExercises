#eg [3,2,1] => [2,1,3] => [1,2,3]
#start with the first element in the list
	#compare it with the element to its right
	#if the first element is less than its neighbor, do nothing
	#if the first element is larger, then swap the two elements' positions
#do this over and over until the list is sorted from smallest to largest

def bubble_sort(list)
	last = list.size - 1
	list.size.times do 
		idx = 0
		while idx < last #1 < 2
			if list[idx] > list[idx + 1] #2 > 1
				temp = list[idx] #temp = 2
				list[idx] = list[idx + 1] #list[0] = 1
				list[idx + 1] = temp #list[1] = 2
			end
			idx += 1
		end
		last -= 1
	end
	p list
end

def bubble_sort_by(list) #["hi", "hello", "hey"]
	#start by passing the list's first and second numbers to the block
		#the block will compare the two numbers by substracting the second from the first
		#the block will return an integer to the method
		#if the integer is positive: the first number is larger than the second. we need to switch their order
		#if the integer is negative or 0, we don't do anything
	#we'll continue to pass pairs of numbers to the block, and switching them as needed according to the result
		#we'll do this process list.size - 1 number of times
	last = list.size - 1
	list.size.times do #2.times
		idx = 0
		while idx < last #1 < 2
			result = yield(list[idx], list[idx + 1]) #yield("hey", "hello")
			if result > 0 # > 0
				temp = list[idx] #temp = 2
				list[idx] = list[idx + 1] #list[idx] = "hey"
				list[idx + 1] = temp #"hello"
			end
			idx += 1
		end
		last -= 1
	end
	p list
end


puts "type in a list of numeric integers, separated by ','"
list = gets.chomp
list = list.split(",")
bubble_sort_by(list) {|first, second| first.length - second.length} #2 - 3