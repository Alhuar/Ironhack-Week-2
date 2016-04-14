class Blog
  attr_reader :post_list

  def initialize
    @post_list = []
	end

	def add_post(post)
		@post_list.push(post)
	end

	def posts
		@post_list.each do |post|
			puts "#{post.name}----#{post.date}"
		end
	end
	
	 def latest_posts
		@post_list.sort do |a, b|
			 b.date <=> a.date
			end
	end




end
