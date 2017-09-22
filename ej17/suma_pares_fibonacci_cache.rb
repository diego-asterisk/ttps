def suma_pares_fibonacci_cache(tope)
   acum = 0
   n = 1
   loop do 
      n += 1
      f = fibonacci_cache(n)
	  break if f > tope
      #puts "n #{n} f #{f}" if (f % 2) == 0
      acum += f if (f % 2) == 0
   end
   acum
end

$cache = {}
$cache[0] = 0
$cache[1] = 1

def fibonacci_cache(n)
   $cache[n] ||= fibonacci_cache(n - 1) + fibonacci_cache(n - 2)
end
