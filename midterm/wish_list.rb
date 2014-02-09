class WishList
	include Enumerable 
	attr_accessor :wishes
	

	def initilize()
		@wishes = []
	end

	def each(&block)
		@wishes.each do |wishes|
			block.call(wishes)
		end
	end

	def wishes
		@wishes
	end

	def map
		@wishes.map do |x| 
	 	 	i = (wishes.index(x) + 1)
			next "#{i}. #{x}" 
		end
	end
end
