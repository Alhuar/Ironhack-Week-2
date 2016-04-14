require "../lib/secure.rb"


RSpec.describe "PasswordChecker" do

	let(:passwordChecker){PasswordChecker.new("test@ironhack.com", "lekalekA2016#")}

	it "should check that the password is longer than 7 char" do
		expect(passwordChecker.check_length).to eq(true)
	end

	it "should check if it has at least one letter, one number and one symbol" do
		expect(passwordChecker.check_chars).to eq(true)
	end

	it "should check that there's at least one uppercase letter and one downcase letter" do
		expect(passwordChecker.check_up_down_cases).to eq(true)
	end

	it "should NOT contain neither the name or domain of the email" do
		expect(passwordChecker.check_duplicates).to eq(true)
	end
end

