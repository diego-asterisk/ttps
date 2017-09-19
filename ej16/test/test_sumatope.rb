require_relative '../sumatope.rb'
require 'minitest/autorun'

class TestSumaTope < Minitest::Test
  def test_cero
    assert_equal(0, suma_tope(3))
  end
  def test_8
    assert_equal(8, suma_tope(6))
  end
  def test_98
    assert_equal(98, suma_tope(21))
  end
end
