require_relative '../notacion_hexadecimal.rb'
require 'minitest/autorun'

class TestNotacionHexadecimal < Minitest::Test
  def test_simple
    assert_equal('#0080FF', notacion_hexadecimal([0, 128, 255]))
  end
end
