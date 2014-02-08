require "#{File.dirname(__FILE__)}/even_number"

describe EvenNumber do

  before do
    @evennumber = EvenNumber.new
  end

	it "should only allow even numbers" do
		@evennumber.number(2).should be_true
		@evennumber.number(1).should be_false
	end

	it "should get the next even number" do
		@evennumber.nextnumber(2).should equal 4
		@evennumber.nextnumber(1).should equal 2
	end

	it "should compare even numbers" do 
      	@evennumber.comparenumber(2, 2).should be_true
      	@evennumber.comparenumber(2, 4).should be_false
	end

	it "should generate a range of even numbers" do
		@evennumber.rangenumber(1, 10).should eql [2, 4, 6, 8, 10]
		@evennumber.rangenumber(2, 2).should eql [2]
	end

end