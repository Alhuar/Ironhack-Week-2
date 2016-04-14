require "rspec"

class PasswordChecker
	def initialize(email, password)
		@email = email
		@password = password
	end
	def check_length
		@password.length > 7 ? true : false
	end

	def check_chars
		@password.index(/\w{1,}\W{1,}/i) >= 0 ? true : false
	end

	def check_up_down_cases
		@password.index(/[A-z]{1,}/) != nil ? true : false
	end

	def check_duplicates
		pattern = @email.split("@")
		pattern_domain = pattern[1].split(".")
		if @password.match(pattern[0]) || @password.match(pattern_domain[0])
			false
		else
			true
		end
	end
end
