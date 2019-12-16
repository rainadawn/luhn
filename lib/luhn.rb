module Luhn
	def self.is_valid?(number)

		result = []
		
		#1. break the cc in to individual digits; splits the integer into digits
		array = number.to_s.split(//).map{ |digits| digits.to_i}


		#2. start from the right, double every second digit
		array.reverse.each_with_index do |x, index|

		#3. if the double value is greater than or equal to 10, subtract 9 from it
		if index % 2 == 0
			result << x
		else
			double = x * 2
			if double >= 10
				double -= 9
			end
			result << double
		end
	end
	
	#4. if the sum is divisible by 10, it's a valid number. Otherwise it's invalid. 
	return result.inject(0, :+) % 10 == 0? true : false
	end

	is_valid?(4194560385008504)
	is_valid?(4194560385008505)	
end

	
