require_relative '../suma_pares_fibonacci_cache.rb'
require 'minitest/autorun'

class TestSumaParesFibonacciCache < Minitest::Test
  def test_cero
    assert_equal(0, suma_pares_fibonacci_cache(0))
  end
  def test_uno
    assert_equal(0, suma_pares_fibonacci_cache(1))
  end
  def test_55
    assert_equal(44, suma_pares_fibonacci_cache(55))
  end
end
