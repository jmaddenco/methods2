module Methods2
	
	def elevenish(num)
		quotient, modulus = num.divmod(11)
		if modulus == 0 || modulus == 1
			true
		else
			false
		end
	end
	
	def ice_cream_party(ice_cream, candy)
		if ice_cream < 5 || candy < 5
			0
		elsif ice_cream >= candy*2 || candy >= ice_cream*2
			2
		elsif ice_cream >= 5 && candy >= 5
			1
		end
	end
	
	def successful_squirrel_party?(weekday, num_nuts)
		if weekday && num_nuts >= 40 && num_nuts <= 60
			true
		elsif !weekday && num_nuts >= 40
			true
		else
			false
		end
	end

	def ticket(a, b, c)
		if a + b == 10 || a + c == 10 || b + c == 10
			10
		elsif a + b - 10 == b + c || a + b - 10 == a + c
			5
		else
			0
		end
	end

	def in_order?(a, b, c, bOk)
		if b > a && c > b && !bOk
			true
		elsif c > b && bOk
			true
		else
			false
		end
	end

	def less_by_ten?(a, b, c)
		if a + 10 <= b || a + 10 <= c || b + 10 <= c
			true
		elsif b + 10 <= a || c + 10 <= a || c + 10 <= b
			true
		else
			false
		end
	end

	def fizz_string(str)
		if  str.start_with?("f")
			return "Fizz"
		elsif str.end_with?("b")
			return "Buzz"
		else
			return str
		end
	end

end