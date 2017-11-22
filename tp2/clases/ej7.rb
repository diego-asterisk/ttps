#Extendé las clases TrueClass y FalseClass para que ambas respondan al método de
#instancia opposite, el cual en cada caso debe retornar el valor opuesto al que recibe la
#invocación al método.

class TrueClass
   def opposite
      false
   end
end

class FalseClass
   def opposite
      true
   end
end

p false.opposite
#	=>	true
p true.opposite
#	=>	false
puts true.opposite.opposite
#	=>	true
