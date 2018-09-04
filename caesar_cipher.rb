=begin 
Example:
	caesar_cipher("aBc!", 2)
	=> "cDe!"

PseudoCode:
	take a string and look each letter's character code on ascii
	add the number to the string's code, this is the total
		if the total exceeds 90 (uppercase letters) or 122 (lowercase letters), subtract 26 from it.
		if it doesn't, merely add the number and get the total
	return the encoded string, leaving punctuation and format the same
=end

def caesar_cipher(string, number)
	newString = ""
	newChar = #stringCharacterCode + number
	stringArray = string.split("")
	# for i in stringArray do
	i = 0
	while i < string.length
		charIndex = stringArray[i].ord
		newChar = charIndex + number
		if charIndex.between?(65,90) #for uppercase
			if newChar > 90
				newChar -= 26
			end
			newString += newChar.chr
		elsif charIndex.between?(97,122) #for lowercase
			if newChar > 122
				newChar -= 26
			end
			newString += newChar.chr
		else 
			newString += charIndex.chr
		end
		i += 1
	end
	p newString
end

caesar_cipher("$AwxyZ! Hi there doggie", 25)

