module MethodsQuiz2
	
	def without_doubles(a,b,c)
		if c
			if numbers_equal?(a,b) == true
				a == 6 ? (a = 1) : a = (a + 1)
			end
		end
			
		return a + b
	end

	def max_maybe(a,b)
		c = a % 5
		d = b % 5

		if a == b
			0
		else
			if c == d
				a > b ? b : a
			else 
				a < b ? b : a
			end
		end
	end

	def squirrels_play?(temp,summer)
		if summer
			temp >= 60 && temp <= 100 ? true : false
		else
			temp >= 60 && temp <= 90 ? true : false
		end
	end

	def red_ticket(a,b,c)
		if a == 2 && b == 2 && c == 2
			10
		elsif a == b && b == c
			5
		elsif a != b && a != c
			1
		else
			0
		end 
	end


	private

		def numbers_equal?(a,b)
			a == b
		end

end