require 'enumerable.rb'
  
describe "#map" do
  context "with array of numbers" do
    it "adds one to all elements" do
  	  expect([1, 2, 3].map {|item| item + 2}).to eql([3, 4, 5])
  	end
  end

  context "with array of strings" do
  	it "capitalizes all strings" do
  	  expect(['hi', 'there', 'Mr.'].map {|item| item.capitalize}).to eql(['Hi', 'There', 'Mr.'])
  	end
  end

  context "with weird inputs" do
    it "returns [] when given array is empty" do
      expect([].map {|item| item * 2}).to eql([])
    end

    # Not sure how to test expected output
    # it "returns message when not given a block" do
    #   expect([1, 2, true].map).to eql('<Enumerator..> missing block')
    # end
  end
end

describe "#my_each" do
  context "when there are numbers" do
    it "prints each one" do
      expect([10, 20, 30].my_each {|item| item}).to eql([10, 20, 30])
    end
  end

  context "when array has mixed data" do
    it "print each element" do
      expect([10, true, nil, 'true'].my_each {|item| item}).to eql([10, true, nil, 'true'])
    end
  end
end
