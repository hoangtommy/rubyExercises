# require 'caesar_cipher.rb'

# describe "#caesar_cipher" do
  
#   context "when a string is given" do
# 	it "works for Upper & Lower CaSeS" do
# 	  expect(caesar_cipher("AbC", 2)).to eql("CdE")
# 	end

# 	it "works for multiple words" do
# 	  expect(caesar_cipher('hello abc', 2)).to eql('jgnnq cde')
# 	end

# 	it "works for negative shifts" do
# 	  expect(caesar_cipher('hello HELLO', -2)).to eql('fcjjm FCJJM')
# 	end

# 	it "works with special characters" do
# 	  expect(caesar_cipher('hello! %', 2)).to eql('jgnnq! %')
# 	end
#   end

#   context "when large numbers are given" do
#     it "works for numbers bigger than 26" do
#       expect(caesar_cipher('abc', 27)).to eql('bcd')
#     end
#   end

# end
