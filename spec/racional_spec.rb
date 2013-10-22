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
	describe " # Formateo de fracciones" do
		it " # Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
			@f1.to_s.should == "3/4"
		end
		
		it " # Se debe mostar por la consola la fraccion en formato flotante" do
			@f1.to_f.should == 0.75
		end
		
	end
end