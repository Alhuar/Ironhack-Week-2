class Post
	 @@current_id = 1
	def initialize(title, date, text, id)
		@title = title
		@date = date
		@text = text
		@id = @@current_id
		@@current_id += 1	
	end

	def title
		@title
	end

	def date
		@date
	end

	def text
		@text
	end
	
	def id
		@id
	end

end



