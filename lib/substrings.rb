# example
dictionary = ["below", "below", "down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "below"]
#  > substrings("below", dictionary)
#  RETURNS => { "below" => 1, "low" => 1 }

# search the list, item by item, for the given word (and its substring)
	# when a match is found, add the match to a hash
	#

def substrings(string, word_list)
	word_count = {}
	word_list.each do |word|
		substring = /^(be)?(low)?/
		if word.match?substring #if the word from the list matches (exact or partial) the string...
			if word_count.include?substring 
				word_count[substring] += 1
			else
				word_count[substring] ||= 1
			end
			# word_count.include?string ? word_count[string] += 1 : word_count[string] ||= 1 why won't this work?
		end 
	end
	p word_count
end



substrings("below", dictionary)