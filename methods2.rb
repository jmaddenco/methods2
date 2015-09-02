module Methods2

	def elevenish?(x)
		print ("elevenish with "+ x.to_s)
		if (x % 11 == 0) then
			return true
		end
		if ((x + 1) % 11 == 0) then
			puts"hello" 
			return true
		end
		return false
	end

	def ice_cream_party?(ice_cream, candy)
		if (ice_cream < 5) then 
			return 0
		end
		if (candy < 5) then
			return 0
		end
		if (ice_cream / 2 >= candy) then
			return 2
		end
		if (candy / 2 >= ice_cream) then
			return 2
		end
		if(ice_cream >=5 && candy >= 5)then
			return 1
		end
	end
	
	def successful_squirrel_party?(nuts, weekend)
		if(nuts >= 40 && weekend) then
			return true
		end
		if (nuts >= 40 && nuts <= 60)then
			return true
		end
		return false

	end

	def ticket?(a, b, c)
		if (a + b == 10 || a + c == 10 || b + c == 10)
			 10# dont need then or return, || = or
		elsif a + b - 10 == b + c || a + b - 10 == a + c
			5
		else
			0
		end
	end

	def ticket?(a, b, c)
		if (a + b == 10 || a + c == 10 || b + c == 10)
			 10# dont need then or return, || = or
		elsif a + b - 10 == b + c || a + b - 10 == a + c
			5
		else
			0
		end
	end

	def in_order?(a, b, c, b0k)
		if a < b && c > b && !b0k
		 	true
		elsif c > b && b0k
			true
		else
			false
		end
	end


	# TODO - write less_by_ten?
	def less_by_ten?
		
	end
	
	# # TODO - write fizz_string
	# def fizz_string
		
	# end
	# # TODO - write first_last_six?
	# def first_last_six?
		
	# end
	# # TODO - write rotate_left
	# def rotate_left
		
	# end
	# # TODO - write double23?
	# def double23
		
	# end
end