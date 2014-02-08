class EvenNumber
	def initialize()
	end

	def number x
		if x % 2 == 0
			return true
		else 
			return false
		end			
	end

	def nextnumber x
		if x % 2 == 0
			x = x + 2
			return x
		else 
			x = x + 1
			return x
		end
	end

	def comparenumber x, y
		if number(x) == true && number(y) == true
			if x == y
		 		return true
			else 
				return false
			end
		else
			return false
		end
	end

	def rangenumber x, y
		arr =* (x..y)
		x = arr.select {|a| a.even? }
		# totalsum = x.inject{ |sum, y| sum + y }
		return x
	end
end