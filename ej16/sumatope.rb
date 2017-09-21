def suma_tope(tope)
   acum = 0
   (3...tope).each do |num|
	  acum += num if (num % 3) == 0 || (num % 5) == 0
   end
   acum
end

