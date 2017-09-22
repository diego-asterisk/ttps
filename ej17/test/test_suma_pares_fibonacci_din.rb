require_relative '../suma_pares_fibonacci_din.rb'
require 'minitest/autorun'

class TestSumaParesFibonacciDin < Minitest::Test
  def test_cero
    assert_equal(0, suma_pares_fibonacci_din(0))
  end
  def test_uno
    assert_equal(0, suma_pares_fibonacci_din(1))
  end
  def test_55
    assert_equal(44, suma_pares_fibonacci_din(55))
  end
end
