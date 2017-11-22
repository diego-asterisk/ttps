def concatenar(*objetos)
   objetos.join(' ').gsub(/\s+/,' ')
end

def incrementar(valor, delta=1)
   raise RuntimeError if valor.is_a? String
   valor + delta
end
