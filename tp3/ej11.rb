def en_palabras(fecha)
   hora = fecha.hour
   minutos = fecha.min
   puts hora.to_s + ':' + minutos.to_s
   case minutos 
      when 0..10 then "son las #{hora} en punto"
      when 11..20 then "son las #{hora} y cuarto"
      when 21..34 then "son las #{hora} y media"
      when 35..44 then "son las #{(hora + 1) % 24} menos veinticinco"
      when 45..55 then "son las #{(hora + 1) % 24} menos cuarto"
      when 56..59 then "casi las #{(hora + 1) % 24}"
   end
end

def contar(frase,palabra)
   frase.downcase.scan(/#{palabra.downcase}/).size
end

def words_from_string(string)
   string.downcase.scan(/[\w']+/)
end

def contar_palabras(frase,palabra)
   palabra_down = palabra.downcase
   words_from_string(frase).reduce(0) {|count, w| if palabra_down==w then count + 1 else count + 0 end }
end
 
def longitud(arr)
   arr.map {|e| e.size }
end
 
def ordenar_arreglo(arr)
   arr.sort
end

def ordenar(*arr)
   arr.sort
end

def longitud2(*arr)
   arr.each do |e|
      puts e.to_s + 
      ' --> ' + 
      e.to_s.size.to_s
   end
end

longitud2(9, Time.now, 'Hola', {un: 'hash'}, :ruby);

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

def da_nil?
   yield.nil?
end
