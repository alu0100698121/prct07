require "lib/racional.rb"

describe Fraccion do
	describe " # Almacenamiento de los valores de numerador y denominador" do
		it " # Debe existir un numerador y debe ser accesible por el metodo num()" do
			@f1.num().should eq(3)
		end
	end
end