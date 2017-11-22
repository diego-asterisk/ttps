# Implementá el Mixin Countable que te permita hacer que cualquier clase cuente la
# cantidad de veces que los métodos de instancia definidos en ella es invocado. Utilizalo
# en distintas clases, tanto desarrolladas por vos como clases de la librería standard de
# Ruby, y chequeá los resultados.

module Countable

   # count_invocations_of(sym): método de clase que al invocarse realiza las tareas
   # necesarias para contabilizar las invocaciones al método de instancia cuyo
   # nombre es sym (un símbolo)
   def count_invocations_of(sym)
      original = 'orig_' + sym.to_s
      reemplazo = sym.to_s
      send(:alias_method, original.to_sym, sym)
      define_method(sym.to_s) do |*args|
         puts 'Invoco ' + sym.to_s
         send original, *args
      end
   end
   # método de instancia que devuelve un valor booleano indicando si
   # el método llamado sym fue invocado al menos una vez en la instancia receptora
   def invoked?(sym)
   
   end
   # método de instancia que devuelve la cantidad de veces que el
   # método identificado por sym fue invocado en la instancia receptora
   def invoked(sym)
   
   end
   
   def self.included(mod)
     puts "#{self} included in #{mod}"
   end

end


#	Ejemplo	de	uso	de	Countable
class Greeter
   #	Incluyo el Mixin
   include 	Countable
   def hi
      puts	'Hey!'
   end
   def bye
      puts	'See	you!'
   end
   #	Indico	que	quiero	llevar	la	cuenta	de	veces	que	se	invoca	el	método	#hi
end


a	= 	Greeter.new
   a.count_invocations_of	:hi
b	= 	Greeter.new
a. invoked?	:hi
#	=>	false
b. invoked?	:hi
#	=>	false
a. hi
#	Imprime	"Hey!"
a. invoked	:hi
#	=>	1
b. invoked	:hi
#	=>	0

            
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
