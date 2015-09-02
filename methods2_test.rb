require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods2'

class Methods2Test < MiniTest::Test
	def setup
		@m = Class.new do
     include Methods2
   	end.new
	end

	def test_elevenish
		assert_equal true, @m.elevenish(11)
		assert_equal true, @m.elevenish(22)
		assert_equal true, @m.elevenish(45)
		
		assert_equal false, @m.elevenish(28)
		assert_equal false, @m.elevenish(10)
	end

	def test_ice_cream_party
		assert_equal 0, @m.ice_cream_party(0, 0)
		assert_equal 0, @m.ice_cream_party(6, 2)
		assert_equal 0, @m.ice_cream_party(3, 10)
		
		assert_equal 1, @m.ice_cream_party(5, 5)
		assert_equal 1, @m.ice_cream_party(6, 7)
		assert_equal 1, @m.ice_cream_party(10, 6)
		
		assert_equal 2, @m.ice_cream_party(5, 10)
		assert_equal 2, @m.ice_cream_party(12, 6)
		assert_equal 2, @m.ice_cream_party(30, 60)
	end

	def test_successful_squirrel_party
		assert_equal true, @m.successful_squirrel_party?(true, 40) 	
		assert_equal true, @m.successful_squirrel_party?(true, 60) 	
		assert_equal true, @m.successful_squirrel_party?(true, 50) 	

		assert_equal true, @m.successful_squirrel_party?(false, 40) 	
		assert_equal true, @m.successful_squirrel_party?(false, 60) 	
		assert_equal true, @m.successful_squirrel_party?(false, 50) 	
		assert_equal true, @m.successful_squirrel_party?(false, 90) 	

		assert_equal false, @m.successful_squirrel_party?(true, 20) 	
		assert_equal false, @m.successful_squirrel_party?(true, 70) 	

		assert_equal false, @m.successful_squirrel_party?(false, 30) 	
	end

	def test_ticket
		assert_equal 10, @m.ticket(1, 9, 19)
		assert_equal 10, @m.ticket(3, 1, 7)
		assert_equal 10, @m.ticket(3, 5, 5)
		
		assert_equal 5, @m.ticket(13, 5, 3)
		assert_equal 5, @m.ticket(4, 11, 1)

		assert_equal 0, @m.ticket(4, 1, 1)
	end

	def test_in_order
		assert_equal true, @m.in_order?(1, 2, 7, true)
		assert_equal true, @m.in_order?(1, 2, 7, false)
		assert_equal true, @m.in_order?(6, 1, 7, true)

		assert_equal false, @m.in_order?(6, 8, 2, false)
		assert_equal false, @m.in_order?(7, 5, 1, true)
	end

	def test_less_by_ten
		assert_equal true, @m.less_by_ten?(1, 11, 5)
		assert_equal true, @m.less_by_ten?(8, 16, 6)
		assert_equal true, @m.less_by_ten?(10, 11, 20)

		assert_equal false, @m.less_by_ten?(1, 1, 2)
		assert_equal false, @m.less_by_ten?(14, 11, 20)
		assert_equal false, @m.less_by_ten?(18, 15, 23)
	end

	def test_fizz_string
		assert_equal "Fizz", @m.fizz_string("front")
		assert_equal "Buzz", @m.fizz_string("bub")
	end

end