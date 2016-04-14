require File.expand_path '../spec_helper.rb', __FILE__

describe "calculate_add" do 
	it "should add to numbers entered by user" do
		post "/calculate_add", { :first_number => 6, :second_number => 2}
		expect(last_response.body).to include(8.to_s)
	end
end

describe "calculate_substract" do 
	it "should add to numbers entered by user" do
		post "/calculate_substract", { :first_number => 6, :second_number => 2}
		expect(last_response.body).to include(4.to_s)
	end
end

describe "calculate_multiply" do 
	it "should add to numbers entered by user" do
		post "/calculate_multiply", { :first_number => 6, :second_number => 2}
		expect(last_response.body).to include(12.to_s)
	end
end

describe "calculate_divide" do 
	it "should add to numbers entered by user" do
		post "/calculate_divide", { :first_number => 6, :second_number => 2}
		expect(last_response.body).to include(3.to_s)
	end
end