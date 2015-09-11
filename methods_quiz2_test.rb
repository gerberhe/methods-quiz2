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
end
