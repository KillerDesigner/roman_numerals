require 'spec_helper'
#require 'translator'

describe Translator do

	before :each do
	  @translator = Translator.new :type 
	end

	describe "#roman_to_arabic" do
	  it "takes Roman numeral as parameter and returns the Arabic number" do 
	  	#expect(Translator.new.roman_to_arabic("MMVI").to eq(2006)
	  	#expect @translator.roman_to_arabic("MMVI").to eq(2006)
	  	@translator.roman_to_arabic("MMVI").should eql(2006)
	  end
	end

	# describe "#arabic_to_roman" do
	#   it "takes Arabic number as a parameter and returns the Roman numeral" do
	#   	expect @translator.arabic_to_roman(2006).to eq("MMVI")
	#   end
	# end
end 