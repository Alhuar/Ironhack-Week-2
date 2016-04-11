require_relative "Lexiconomitron.rb"



RSpec.describe Lexiconomitron do 
	before :each do
		@lexi = Lexiconomitron.new
  		@initial_array = ["This", "is", "a", "boring", "test"]
  	end
  	describe "#eat_t" do
  		it "removes every letter t from the input" do
  			expect(@lexi.eat_t("great scotT!")).to eq("grea sco!")
  		end
  	end
  	 describe "shazam" do
  		it "takes an array of words and reverses the letters within the words" do
  			expect(@lexi.shazam(@initial_array)).to eq(["sih","se"])
  		end
  	end
  	describe "oompa_loompa" do
  		it "takes an array of words, takes the ones which size is 3 chars or less and passes it to eat_t" do
  			expect(@lexi.oompa_loompa(["if", "you", "wanna", "be", "my", "lover"])).to eq(["if", "you", "be", "my"])
  	end
  	end
end
