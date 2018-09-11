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

	def my_count(element = nil)
		total = 0
		if element != nil #do this if argument is passed
			idx = 0
			while idx < self.size
				total +=1 if self[idx] == element
				idx += 1
			end
		else
			self.my_select do |item|
				total += 1 if yield(item) == true
			end
		end
		total
	end

	def my_map(proc=nil)
		modified_array = []
		self.my_each do |item|
			modified_array << (proc.nil? ? yield(item) : proc.call(item))
		end
		modified_array
	end

	def my_inject(accumulator=self[0])
		total = accumulator
		self.my_each do |item|
			next if total == self[0] && item == self[0]
			p total = yield(total, item)
		end
		total 
	end
end


# puts "type in a list of items, separated by a comma"
# response = gets.split(",") 
arr = [2,4,5]
arr2 = ["ted", "tasha", "tate"]
my_proc = Proc.new {|item| item*item}
p arr.my_map my_proc