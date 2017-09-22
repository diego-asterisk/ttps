def suma_pares_fibonacci_din(tope)
   acum = 0
   n = 1
   loop do 
      n += 1
      f = fibonacci_din(n)
	  break if f > tope
      #puts "n #{n} f #{f}" if (f % 2) == 0
      acum += f if (f % 2) == 0
   end
   acum
end

$cache = Array.new
$cache[0] = 0
$cache[1] = 1

def fibonacci_din(n)
   #(2..n).each { |i| $cache[i] ||= $cache[i - 2] + $cache[i - 1] }
   $cache[n] ||= $cache[n - 2] + $cache[n - 1] 
end
