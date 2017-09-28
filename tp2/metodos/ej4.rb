def longitud(*arr)
   arr.each do |e|
      puts e.to_s + 
      ' --> ' + 
      e.to_s.size.to_s
   end
end

longitud(9, Time.now, 'Hola', {un: 'hash'}, :ruby)
# Debe imprimir:
# "9" --> 1
# "2017-09-14 13:22:10 +0000" --> 25
# "Hola" --> 4
# {:un=>"hash"} --> 13
# ruby --> 4
