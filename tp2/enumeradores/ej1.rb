fib = Enumerator.new do |y|
   a = b = 1
   loop do
     y.yield a
     a, b = b, a + b
   end
end

fib
fib.next
fib.take(19)
