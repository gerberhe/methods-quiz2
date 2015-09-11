require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods_quiz2'

class MethodsQuizTest < MiniTest::Test
	def setup
		@m = Class.new do
     include MethodsQuiz2
   	end.new
	end

	# TODO - write tests here

	def test_without_doubles
		assert_equal 7,@m.without_doubles(3,4)
		assert_equal 9,@m.without_doubles(4,4)
		assert_equal 6,@m.without_doubles(1,5)
		assert_equal 2,@m.without_doubles(6,6)
	end

	def test_max_maybe
		assert_equal 8,@m.max_maybe(8,2)
		assert_equal 0,@m.max_maybe(4,4)
		assert_equal 5,@m.max_maybe(5,10)
		assert_equal 6,@m.max_maybe(6,11)
	end

	def test_squirrels_play?
		assert_equal true,@m.squirrels_play?(false,65)
		assert_equal true,@m.squirrels_play?(false,90)
		assert_equal true,@m.squirrels_play?(true,80)
		assert_equal true,@m.squirrels_play?(true,100)
		assert_equal false,@m.squirrels_play?(true,110)
		assert_equal false,@m.squirrels_play?(true,50)
		assert_equal false,@m.squirrels_play?(false,100)
		assert_equal false,@m.squirrels_play?(false,40)
	end

	def red_ticket
		assert_equal 10,@m.red_ticket(2,2,2)
		assert_equal 5,@m.red_ticket(1,1,1)
		assert_equal 5,@m.red_ticket(0,0,0)
		assert_equal 1,@m.red_ticket(0,2,1)
		assert_equal 1,@m.red_ticket(0,1,1)
		assert_equal 0,@m.red_ticket(1,0,1)
		assert_equal 0,@m.red_ticket(2,2,1)
	end
end
