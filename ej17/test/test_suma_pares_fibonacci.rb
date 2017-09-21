require_relative '../suma_pares_fibonacci.rb'
require 'minitest/autorun'

class TestSumaParesFibonacci < Minitest::Test
  def test_cero
    assert_equal(0, suma_pares_fibonacci(0))
  end
  def test_uno
    assert_equal(0, suma_pares_fibonacci(1))
  end
  def test_55
    assert_equal(44, suma_pares_fibonacci(55))
  end
end
