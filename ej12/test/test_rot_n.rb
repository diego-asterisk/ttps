require_relative '../rot_n.rb'
require 'minitest/autorun'

class TestRotN < Minitest::Test
  def test_empty_string
    assert_equal('', rot_n('',13))
  end
  def test_single_pair
    assert_equal("¡Ovrairavqbf n yn phefnqn 2015 qr GGCF Bcpvóa Ehol!", 
			rot_n("¡Bienvenidos a la cursada 2015 de TTPS Opción Ruby!",13)
		)
  end
end
