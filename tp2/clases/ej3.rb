require_relative 'reverso'
class Auto
   include Reverso;
   def initialize(llave = false)
      @llave = llave
   end
end

ford = Auto.new(:mi_llave)
puts ford.class
puts ford.ssalc
puts ford.object_id
puts ford.di_tcejbo

