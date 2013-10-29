require './lib/racional'

describe Fraccion do
	before :each do
		@f1 = Fraccion.new(3,4)
		@f2 = Fraccion.new(6,14)
		@f3 = Fraccion.new(-2,3)
		@f4 = Fraccion.new(-6,-8) # == @f1
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
	describe " # Operadores unarios" do
		it " # Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
			f_aux = @f3.abs
			f_aux.to_s.should == "2/3"
		end
		
		it " # Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
			f_aux = @f1.reciprocal
			f_aux.to_s.should == "4/3"
		end
		
		it " # Se debe calcular el opuesto de una fraccion con -" do
			(-@f1).to_s.should eq("-3/4")
		end
	end
	describe " # Operaciones aritmeticas" do
		it " # Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
			(@f1 + @f2).to_s.should eq("33/28")
		end
		
		it " # Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
			(@f1 - @f2).to_s.should eq("9/28")
		end
		
		it " # Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
			(@f1 * @f2).to_s.should eq("9/28")
		end
		
		it " # Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
			(@f1 / @f2).to_s.should eq("7/4")
		end
		
		it " # Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida" do
			(@f1 % @f2).to_s.should eq("0/1") # La división de 2 fracciones debería dar el elemento nulo (0/1) en cualquier caso
		end
	end
	describe " # Operaciones comparacionales" do
		it " # Se debe de poder comprobar si una fracion es menor que otra" do
			(@f3 < @f1).should == true
		end
		
		it " # Se debe de poder comprobar si una fracion es mayor que otra" do
			(@f1 > @f2).should == true
		end
		
		it " # Se debe de poder comprobar si una fracion es igual que otra" do
			(@f1 == @f4).should == true
		end
		
		it " # Se debe de poder comprobar si una fracion es distinta de otra" do
			(@f1 != @f4).should_not == true
		end
		
		it " # Se debe de poder comprobar si una fracion es menor o igual que otra" do
			(@f2 <= @f1).should == true
		end
		
		it " # Se debe de poder comprobar si una fracion es mayor o igual que otra" do
			(@f1 >= @f4).should == true
		end
	
	end
end
