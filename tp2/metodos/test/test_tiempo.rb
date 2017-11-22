require_relative '../tiempo.rb'
require 'minitest/autorun'

class TestCuantoFalta < Minitest::Test
  def test_falta_1_hora
    fecha_desde = Time.new(Time.now.year,Time.now.month,Time.now.day,22,59,59)
    fecha_hasta = Time.new(Time.now.year,Time.now.month,Time.now.day,23,59,59)
    assert_equal(60, cuanto_falta_desde(fecha_desde,fecha_hasta))
  end
  def test_falta_10_minutos
    fecha_desde = Time.new(Time.now.year,Time.now.month,Time.now.day,22,49,59)
    fecha_hasta = Time.new(Time.now.year,Time.now.month,Time.now.day,22,59,59)
    assert_equal(10, cuanto_falta_desde(fecha_desde,fecha_hasta))
  end
  def test_dentro_10_minutos
    fecha_hasta = Time.now + 60*10
    assert_equal(10, cuanto_falta?(fecha_hasta))
  end
end
