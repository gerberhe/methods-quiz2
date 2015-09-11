module MethodsQuiz2
	
	def without_doubles(a,b)
		if numbers_equal?(a,b) == true
			a == 6 ? (a = 1) && (b = 1) : a = (a + 1)
		end

		return a + b
	end

	def max_maybe(a,b)
		c = a % 5
		d = b % 5

		if a == b
			return 0
		elsif c == d
			if a > b
				return b
			elsif a < b
				return a
			end
		elsif a > b
			return a
		elsif a < b
			return b
		end
	end

	def squirrels_play?(summer,temp)
		if summer == true
			temp >= 60 && temp <= 100 ? true : false
		elsif summer == false
			temp >= 60 && temp <= 90 ? true : false
		end
	end


	private

		def numbers_equal?(a,b)
			a == b
		end

end