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
		self.each do |item|
			modified_arr << item if yield(item)
		end
		modified_arr
	end

	def my_all?
		modified_array = []
		self.my_select do |item|
			modified_array << item if yield(item)
		end
		self.size == modified_array.size ? true : false
	end

	def my_any?
		modified_array = []
		self.my_select do |item|
			modified_array << item if yield(item)
			if modified_array.size > 0
				return true
			end
		end
		false
	end
end


# puts "type in a list of items, separated by a comma"
# response = gets.split(",") 
arr = [1,2,4,21]
arr2 = ["ted", "tasha", "tate"]

p arr.my_select {|item| item.odd?} #error: undefined methodd 'odd?' for nil

