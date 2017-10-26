module B
  def uno
   ", ¿cómo andás?"
  end
end

class A
  include B

  def dos
    saludo = "Hola#{uno}"
    puts saludo
    2
  end
end

A.new.dos


