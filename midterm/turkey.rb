class Animal

end

class Turkey < Animal
	attr_accessor :weight

	def initialize(w)
		@weight = w
	end

	def weight
		@weight
	end
end

# my_turkey = Turkey.new(100)
# puts my_turkey