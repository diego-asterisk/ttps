def suma_pares_fibonacci(tope)
   acum = 0
   n = 1
   loop do 
      n += 1
      f = fibonacci(n)
	  break if f > tope
      puts "n #{n} f #{f}" if (f % 2) == 0
      acum += f if (f % 2) == 0
   end
   acum
end

def fibonacci(n)
   if (0..1).include?(n)
      n
   else
      fibonacci(n-1) + fibonacci(n-2)
   end
end
