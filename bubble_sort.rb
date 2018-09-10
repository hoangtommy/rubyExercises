#eg [3,2,1] => [2,1,3] => [1,2,3]
#start with the first element in the list
	#compare it with the element to its right
	#if the first element is less than its neighbor, do nothing
	#if the first element is larger, then swap the two elements' positions
#do this over and over until the list is sorted from smallest to largest

def bubble_sort(list) #[3,2,1] => [2,3,1] => [2,1,3] => [1,2,3]
	until list[0] == list.min && list[-1] == list.max #3 != 1 && 1 == 3
		idx = 0
		while idx < list.size - 1 #1 < 2
			if list[idx] > list[idx + 1] #2 > 1
				temp = list[idx] #temp = 2
				list[idx] = list[idx + 1] #list[0] = 1
				list[idx + 1] = temp #list[1] = 2
			end
			idx += 1
		end
	end
	p list
end

puts "type in a list of numeric integers, separated by ','"
list = gets.chomp
list = list.split(",").map {|item| item.to_i}
bubble_sort(list)