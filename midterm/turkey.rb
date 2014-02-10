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

	def gobble_speak(message)
		message_array = message.split(" ") 
		message_array.map! do |x| 
			@end_in_period = false
			if x.match(/\./)
				@end_in_period = true
			end
			if x.match(/^[a-z]/)
				x = "gobble"
			elsif x.match(/'/)
				x = "Gobb'le"
			else
				x = "Gobble"
			end
			if @end_in_period
				x = x + "."
			else
				x = x
			end	
		end
	message_array.join(" ")	
	end
end

# my_turkey = Turkey.new(100)
# puts my_turkey