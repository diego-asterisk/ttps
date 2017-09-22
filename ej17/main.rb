require_relative 'suma_pares_fibonacci'
require_relative 'suma_pares_fibonacci_din'
require_relative 'suma_pares_fibonacci_cache'

puts suma_pares_fibonacci_cache(4000000)
puts suma_pares_fibonacci_din(4000000)
puts suma_pares_fibonacci(4000000)
