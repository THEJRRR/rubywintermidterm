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

	def whats_for_dinner
	    p_ary = @menu[:proteins].to_a
    	v_ary = @menu[:veggies].to_a

    	fake_meat = p_ary.map {|protein| protein = protein.to_s} 
    	fake_meat = fake_meat.map {|protein| protein.gsub(/_/, '')}

    	veg = v_ary.map {|veggie| veggie = veggie.to_s}
    	veg = veg.map {|veggie| veggie.gsub(/_/, ' ')}
    	veg = veg.join(', ')
    	veg = veg.split.map { |i| i.capitalize }.join(' ')
    	veg = veg.gsub(/Yams/, "and Yams")


		"Tonight we have proteins #{fake_meat.join(' and ')}, and veggies #{veg}."	
	end

	def whats_for_dessert
		d_pie = @menu[:desserts][:pies].to_a
		d_other = @menu[:desserts][:other].to_a
		d_molds = @menu[:desserts][:molds].to_a

		pie = d_pie.map {|pie| pie = pie.to_s}
		pie = pie.map {|pie| pie.gsub(/_/, ' ')}
		pie = pie.join(', ')
		pie = pie.split.map { |i| i.capitalize }.join(' ')

		other = d_other.join(', ')
		
		molds = d_molds.map {|molds| molds = molds.to_s}
		molds = molds.map { |i| i.capitalize }.join(' and ')
		

		"Tonight we have 5 delicious desserts: #{pie}, #{other}, and 3 molds: #{molds}."
	end
end

   