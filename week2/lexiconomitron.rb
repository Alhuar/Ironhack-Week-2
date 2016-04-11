require "rspec"
class Lexiconomitron

	def eat_t(input)
		 input.gsub(/[t]/i, "")
	end
	def shazam(array)
		array.map! {|word| eat_t(word.reverse)}
		 [array[0], array[-1]]
	end

	def oompa_loompa(array)
		array.delete_if do |word|
			word.length > 3
		end
	end



end


lexi = Lexiconomitron.new
lexi.eat_t("great scott!")
puts lexi.shazam(["This", 'is', 'a'])
puts lexi.oompa_loompa(['if', 'you', 'wanna'])