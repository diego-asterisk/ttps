class VehiculoDeMotor
   attr_accessor :llave;
   def arrancar 
      puts @llave
   end
   def initialize(llave = false)
      @llave = llave
   end
end

class Auto < VehiculoDeMotor
   def arrancar
      freno_mano = false
      cambio = :punto_muerto
      super
   end
end
class Moto < VehiculoDeMotor
   def arrancar
      patada = true
      super
   end
end
class Lancha < VehiculoDeMotor
end

class	Taller
	def probar (objeto)
		objeto.arrancar
	end
end

tito = Taller.new
ford = Auto.new(:mi_llave)
tito.probar(ford)

# una motosierra tiene motor, pero no es un vehiculo, usamos polimorfismo 
# o podemos usar mixins con un módulo Motor
# o podemos usar composición
