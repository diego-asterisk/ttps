require_relative '../rot_13.rb'
require 'minitest/autorun'

class TestRot13 < Minitest::Test
  def test_empty_string
    assert_equal('', rot_13(''))
  end
  def test_single_pair
    assert_equal("¡Ovrairavqbf n yn phefnqn 2017 qr GGCF Bcpvóa Ehol!", 
			rot_13("¡Bienvenidos a la cursada 2017 de TTPS Opción Ruby!")
		)
  end
end
