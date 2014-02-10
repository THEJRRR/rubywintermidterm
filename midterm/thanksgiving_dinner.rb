class Dinner

end

class ThanksgivingDinner < Dinner
	attr_accessor :guests, :menu

	@@vegan_menu = {:diet => :vegan,
					:proteins => ["Tofurkey", "Hummus"], 
					:veggies => [:ginger_carrots , :potatoes, :yams], 
					:desserts => {:pies => [:pumkin_pie], :other => ["Chocolate Moose"], :molds => [:cranberry, :mango, :cherry]}}

	def initialize(menu_type)
		if menu_type == :vegan
			@menu = @@vegan_menu
		end
	end

	def guests
		@guests
	end

	def menu
		@menu
	end

	def seating_chart_size 
		new_chart = guests.inject(:+)
		new_chart.length
	end
end

my_dinner = ThanksgivingDinner.new(:vegan)
	puts my_dinner.menu[:veggies[:ginger_carrots]]
