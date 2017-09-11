require_relative '../a_ul.rb'
require 'minitest/autorun'

class TestAUl < Minitest::Test
  def test_empty_hash
    assert_equal('', a_ul({}))
  end
  def test_single_pair
    assert_equal("<ul><li>perros: 1</li></ul>", a_ul({ perros: 1}))
  end
  def test_many_words
    assert_equal("<ul><li>perros: 1</li><li>gatos: 1</li><li>peces: 0</li></ul>",
                 a_ul({ perros: 1, gatos: 1, peces: 0}))
  end
end
