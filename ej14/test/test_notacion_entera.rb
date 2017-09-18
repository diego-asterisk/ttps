require_relative '../notacion_entera.rb'
require 'minitest/autorun'

class TestNotacionEntera < Minitest::Test
  def test_simpe
    assert_equal(16744448, notacion_entera([0, 128, 255]))
  end
end
