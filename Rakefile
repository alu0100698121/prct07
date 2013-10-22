task :default => :test

desc "Espectativas de la clase Fraccion" 
task :test do
	sh "rspec -I. spec/racional_spec.rb --format documentation"
end

desc "Espectativas de la clase Fraccion, con documentacion HTML"
task :thtml do
	sh "rspec -I. spec/racional_spec.rb --format html"
end

desc "Ejecutar el programa principal"
task :bin do
	sh "ruby ./lib/racional.rb"
end

