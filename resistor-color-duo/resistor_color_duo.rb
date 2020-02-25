class ResistorColorDuo
	COLORS_ENCODED = {  "black" => 0, 
					    "brown" =>  1,
						"red" => 2,
					    "orange" => 3,
					    "yellow" => 4,
					    "green" => 5,
					    "blue" => 6,
					    "violet" => 7,
					    "grey" => 8,
						"white" => 9}
	def self.value(colors)
	  colors.map{|i| COLORS_ENCODED[i]}.join.to_i
	end
end
# This solution is copied