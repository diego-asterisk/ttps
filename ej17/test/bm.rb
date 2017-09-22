require_relative '../suma_pares_fibonacci.rb'
require_relative '../suma_pares_fibonacci_din.rb'
require_relative '../suma_pares_fibonacci_cache.rb'
require 'benchmark'

iterations = 100_000
Benchmark.bm(27) do |bm|
  bm.report('suma_pares_fibonacci_cache') do
    iterations.times do
      suma_pares_fibonacci_cache(4_000_000)
    end
  end

  bm.report('suma_pares_fibonacci_din') do
    iterations.times do
      suma_pares_fibonacci_din(4_000_000)
    end
  end

end

__END__
iterations = 1
Benchmark.bm(27) do |bm|
  bm.report('1 vez suma_pares_fibonacci') do
    iterations.times do
      suma_pares_fibonacci(4_000_000)
    end
  end

end
