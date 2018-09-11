module Enumerable
	def my_each
		ele = 0
		while ele < self.size
			yield(self[ele])
			ele += 1
		end
		self
	end

	def my_each_with_index
		ele = 0
		idx = 0
		while idx < self.size
			yield(self[ele], idx)
			idx += 1
			ele += 1
		end
		self
	end

	def my_select
		modified_arr = []
		self.my_each do |item|
			modified_arr << item if yield(item)
		end
		modified_arr
	end

	def my_all?
		self.my_select do |item|
			return false if yield(item) == false
		end
		true
	end

	def my_any?
		self.my_select do |item|
			return true if yield(item) == true
		end
		false
	end

	def my_none?
		self.my_select do |item|
			return false if yield(item) == true
		end
		true
	end

	def my_count
		total = 0
		# if element != nil
		# 	self.my_select do |item|
		# 		total += 1 if yield(item) == element
		# 	end
		# 	return total
		# end
		self.my_select do |item|
			total += 1 if yield(item) == true
		end
		total
	end
end


# puts "type in a list of items, separated by a comma"
# response = gets.split(",") 
arr = [1,2,4,21,3,16]
arr2 = ["ted", "tasha", "tate"]

p arr.my_count(3) #{|item| item % 2 == 0}