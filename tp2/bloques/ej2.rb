def procesar_hash2(hash,f)
   res = hash.map do |(k,v)|
      [v , f.call(k)]
   end
end

def procesar_hash(hash,f)
   res = {}
   hash.each do |(k,v)|
      res[v] = f.call(k)
   end
   res
end

hash = { 'clave' => 1, :otra_clave => 'valor' }
procesar_hash(hash, ->(x) { x.to_s.upcase })
# => { 1 => 'CLAVE', 'valor' => 'OTRA_CLAVE' }
