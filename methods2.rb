module Methods2
<<<<<<< HEAD

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

=======
	
	# TODO - write elevenish?

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
	
	# TODO - write ice_cream_party?

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
	
	# TODO - write successful_squirrel_party?
	
	def successful_squirrel_party?(nuts, weekend)
		if(nuts >= 40 && weekend) then
			return true
		end
		

		if (nuts >= 40 && nuts <= 60)then
			return true
		end
		return false

	end
<<<<<< HEAD


	# TODO - write ticket
	def ticket?(a, b, c)
		if (a + b == 10 || a + c == 10 || b + c == 10)
			 10# dont need then or return, || = or
		elsif a + b - 10 == b + c || a + b - 10 == a + c
			5
		else
			0
		end
======


	# TODO - write ticket
>>>>>>> cc1efbf278efdd06ce766f53e371fca4d115c057
	def ticket?(a, b, c)
		if (a + b == 10 || a + c == 10 || b + c == 10)
			 10# dont need then or return, || = or
		elsif a + b - 10 == b + c || a + b - 10 == a + c
			5
		else
			0
		end
<<<<<<< HEAD
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


=======

>>>>>> c366d80c29270c821d08a722923d33d9aba5a645
	end
	# TODO - write in_order?
	def in_order?(a, b, c, b0k)
		if a < b && c > b && !b0k
		 	true
		elsif c > b && b0k
			true
		else
			false
		end
	end


>>>>>>> cc1efbf278efdd06ce766f53e371fca4d115c057
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