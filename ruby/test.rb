$LOAD_PATH << File.dirname(__FILE__)
require "minitest/autorun"
require "jewel_lib"

class TestJewel < MiniTest::Unit::TestCase
	def test_is_valid_array
    	assert_equal(test([0, 1, 2, 6, 3, 5, 7, 5, 6, 4, 0, 4, 3, 8, 7, 9, 2, 1, 9, 8]), true)
    end
end