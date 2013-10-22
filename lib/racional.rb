require "gcd.rb"

class Fraccion
	def initialize(x,y)
		raise ArgumentError , 'Argumentos no enteros.' unless x.is_a? Integer and y.is_a? Integer
        raise ArgumentError , 'Denominador nulo.' unless y != 0

		@num, @den = x, y
		reducir
	end
	
	def num()
		@num
	end
	
	def den()
		@den
	end
	
	def to_s
		"#{@num}/#{@den}"
	end
	
	def reducir
		mcd = gcd(@num,@den)
		@num = @num / mcd
		@den = @den / mcd
	end

end