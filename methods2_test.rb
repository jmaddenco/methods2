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
		assert_equal true, @m.elevenish?(11) 
		assert_equal true, @m.elevenish?(22)
		assert_equal false, @m.elevenish?(45)
		assert_equal false, @m.elevenish?(28)
		assert_equal true, @m.elevenish?(10)
	end

	def test_ice_cream_party
		assert_equal 0, @m.ice_cream_party?(1,1)
		assert_equal 0, @m.ice_cream_party?(5,1)
		assert_equal 0, @m.ice_cream_party?(2,6)
		assert_equal 1, @m.ice_cream_party?(5,5)
		assert_equal 1, @m.ice_cream_party?(6,5)
		assert_equal 1, @m.ice_cream_party?(6,6)
		assert_equal 1, @m.ice_cream_party?(5,6)
		assert_equal 2, @m.ice_cream_party?(12,6)
		assert_equal 2, @m.ice_cream_party?(6,12)
		assert_equal 0, @m.ice_cream_party?(6,-12)
	end

	def test_successful_squirrel_party?
		assert_equal true, @m.successful_squirrel_party?(55,false)
		assert_equal false, @m.successful_squirrel_party?(77,false)
		assert_equal false, @m.successful_squirrel_party?(20,false)
		assert_equal true, @m.successful_squirrel_party?(40,false)
		assert_equal true, @m.successful_squirrel_party?(60,false)
		assert_equal true, @m.successful_squirrel_party?(65,true)
	end

	def test_ticket?
		assert_equal 10, @m.ticket?(1, 9, 19)
		assert_equal 10, @m.ticket?(3, 1, 7)
		assert_equal 10, @m.ticket?(3, 5, 5)
		
		assert_equal 5, @m.ticket?(13, 5, 3)
		assert_equal 5, @m.ticket?(4, 11, 1)

		assert_equal 0, @m.ticket?(4, 1, 1)
	end

	def test_in_order
		assert_equal true, @m.in_order?(1, 2, 7, true)
		assert_equal true, @m.in_order?(1, 2, 7, false)
		assert_equal true, @m.in_order?(6, 1, 7, true)

		assert_equal false, @m.in_order?(6, 8, 2, true)
		assert_equal false, @m.in_order?(7, 5, 1, false)
	end
end