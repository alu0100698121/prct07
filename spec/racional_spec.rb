require "lib/racional.rb"

describe Fraccion do
	before :each do
		@f1 = Fraccion.new(3,4)
		@f2 = Fraccion.new(6,14)
	end
	describe " # Almacenamiento de los valores de numerador y denominador" do
		it " # Debe existir un numerador y debe ser accesible por el metodo num()" do
			@f1.num().should eq(3)
		end
		
		it " # Debe existir un denominador y debe ser accesible por el metodo den()" do
			@f1.den().should eq(4)
		end
		
		it " # Debe de estar en su forma reducida" do
			@f2.to_s.should eq("3/7")
		end

	end
end