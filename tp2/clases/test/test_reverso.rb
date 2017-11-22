require_relative '../reverso.rb'
require 'minitest/autorun'

class TestReverso < Minitest::Test
  def test_class
    oc = String.class.to_s
    String.extend Reverso
    assert_equal(oc.reverse, String.ssalc)
  end
  def test_object_id
    oi = String.object_id.to_s
    String.extend Reverso
    assert_equal(oi.reverse, String.di_tcejbo)
  end
end
