module B
  def uno
   ", ¿cómo andás?"
  end
end

class A
  extend B

  def dos
    @saludo = 'Hola#{uno}'
    echo saludo
    2
  end
end

A.dos

