module MethodsQuiz2
	
	def without_doubles(a,b)
		if numbers_equal?(a,b) == true
			a == 6 ? (a = 1) && (b = 1) : a = (a + 1)
		end

		return a + b
	end


	private

		def numbers_equal?(a,b)
			a == b
		end

end