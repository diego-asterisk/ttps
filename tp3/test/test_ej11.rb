require 'minitest/autorun'
require 'minitest/spec'
require_relative "../ej11"

describe '#en_palabras' do
  describe 'cuando el valor es cercano a en punto' do
    it 'en punto' do
      hora = 10
      minutos = 01
      valor = Time.new(2008,6,21, hora,minutos,0, "+09:00")
      assert_equal('son las 10 en punto', en_palabras(valor))
    end

    it 'en punto' do
      hora = 10
      minutos = 00
      valor = Time.new(2008,6,21, hora,minutos,0, "+09:00")
      assert_equal('son las 10 en punto', en_palabras(valor))
    end
  end

  describe 'cuando el valor es cercano a y media' do
    it 'y media' do
      hora = 10
      minutos = 29
      valor = Time.new(2008,6,21, hora,minutos,0, "+09:00")
      assert_equal('son las 10 y media', en_palabras(valor))
    end
  end

  describe 'cuando el valor es cercano a 45' do
    it 'menos cuarto' do
      hora = 9
      minutos = 46
      valor = Time.new(2008,6,21, hora,minutos,0, "+09:00")
      assert_equal('son las 10 menos cuarto', en_palabras(valor))
    end
  end

end

describe '#contar' do
  describe 'cuando la contiene 5 veces' do
    it 'da 5' do
      valor = "La casa de la esquina tiene la puerta roja y la ventana blanca."
      buscado = "la"
      assert_equal(5, contar(valor,buscado))
    end
  end

  describe 'cuando no la contiene' do
    it 'da 0' do
      valor = "La casa de la esquina tiene la puerta roja y la ventana blanca."
      buscado = "xx"
      assert_equal(0, contar(valor,buscado))
    end
  end

  describe 'cuando esta en distinto case' do
    it 'la encuentra' do
      valor = "La casa de la esquina tiene la puerta roja y la ventana blanca."
      buscado = "ROJA"
      assert_equal(1, contar(valor,buscado))
    end
  end

end

describe '#contar_palabras' do
  describe 'cuando la contiene 4 veces' do
    it 'da 4' do
      valor = "La casa de la esquina tiene la puerta roja y la ventana blanca."
      buscado = "la"
      assert_equal(4, contar_palabras(valor,buscado))
    end
  end

  describe 'cuando no la contiene' do
    it 'da 0' do
      valor = "La casa de la esquina tiene la puerta roja y la ventana blanca."
      buscado = "xx"
      assert_equal(0, contar_palabras(valor,buscado))
    end
  end

  describe 'cuando esta en distinto case' do
    it 'la encuentra' do
      valor = "La casa de la esquina tiene la puerta roja y la ventana blanca."
      buscado = "ROJA"
      assert_equal(1, contar_palabras(valor,buscado))
    end
  end

end

describe '#longitud' do
  describe 'una prueba comun' do
    it 'da [4, 6, 4, 12]' do
      valor = ['TTPS', 'Opción', 'Ruby', 'Cursada 2015']
      assert_equal([4, 6, 4, 12], longitud(valor))
    end
  end

  describe 'cuando es vacio' do
    it 'da vacio' do
      valor = []
      assert_equal([], longitud(valor))
    end
  end

  describe 'cuando es un array de numeros' do
    it 'da el tamaño en bytes' do
      valor = [1, 22, 333]
      assert_equal([8, 8, 8], longitud(valor))
    end
  end

end

describe '#ordenar_arreglo' do
  describe 'una prueba comun' do
    it 'da [4, 6, 7, 12]' do
      valor = [7,6,12,4]
      assert_equal([4, 6, 7, 12], ordenar_arreglo(valor))
    end
  end

  describe 'cuando hay repetidos' do
    it 'da [1,3,3,7]' do
      valor = [3,1,7,3]
      assert_equal([1,3,3,7], ordenar_arreglo(valor))
    end
  end

  describe 'cuando contiene cero y negativos' do
    it 'da [-2,-1,0,1,2]]' do
      valor = [2,1,0,-2,-1]
      assert_equal([-2,-1,0,1,2], ordenar_arreglo(valor))
    end
  end

end


describe '#ordenar' do
  describe 'una prueba comun' do
    it 'da [4, 6, 7, 12]' do
      valor = [7,6,12,4]
      assert_equal([4, 6, 7, 12], ordenar(*valor))
    end
  end

  describe 'cuando hay repetidos' do
    it 'da [1,3,3,7]' do
      valor = [3,1,7,3]
      assert_equal([1,3,3,7], ordenar(*valor))
    end
  end

  describe 'cuando contiene cero y negativos' do
    it 'da [-2,-1,0,1,2]]' do
      valor = [2,1,0,-2,-1]
      assert_equal([-2,-1,0,1,2], ordenar(*valor))
    end
  end

end

describe '#longitud2' do
  describe 'una prueba comun' do
    it 'prueba la salida' do
      valor = [9, Time.now, 'Hola', {un: 'hash'}, :ruby]
      assert_equal(valor, longitud2(*valor))
      #expect_output "9 --> 1\n2017-11-12 17:53:31 -0300 --> 25\nHola --> 4\n{:un=>\"hash\"} --> 13\nruby --> 4"
      #"9 --> 1\n2017-11-12 17:53:31 -0300 --> 25\nHola --> 4\n{:un=>\"hash\"} --> 13\nruby --> 4"
    end
  end

  describe 'cuando es vacio' do
    it 'da vacio' do
      valor = []
      assert_equal([], longitud2(*valor))
    end
  end

  describe 'cuando es un array de numeros' do
    it 'da el tamaño del string' do
      valor = [1, 22, 333]
      assert_equal(valor, longitud2(*valor))
    end
  end

end

describe '#opposite' do
  describe 'opuesto de true' do
    it 'false' do
      assert_equal(false, true.opposite)
    end
  end

  describe 'opuesto de false' do
    it 'true' do
      assert_equal(true, false.opposite)
    end
  end

  describe 'opuesto del opuesto de true' do
    it 'true' do
      assert_equal(true, true.opposite.opposite)
    end
  end

end

describe '#da_nil?' do
  describe 'bloque nulo' do
    it 'true' do
      assert_equal(true, da_nil? {})
    end
  end

  describe 'bloque devuelve algo' do
    it 'false' do
      assert_equal(false, da_nil? { 'algo' })
    end
  end

  describe 'bloque devuelve nil' do
    it 'true' do
      assert_equal(true, da_nil? { puts 'algo' })
    end
  end

end
