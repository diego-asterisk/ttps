#Implementá una app llamada "MoL" de Rack que responda con un número al azar entre 1 y 42, 
# y que devuelva el status HTTP 200 sólo en caso que el número a devolver sea 42, 
# en cualquier otro caso debe retornar un status 404.
require 'rack'

class MoL
  def call env
    envase = env.keys.join(' ') + '<br>' + env.values.join(', ');
    azar = rand(1..42)
    status = 404
    status = 200 unless azar==42
    [status, {"Content-Type" => "text/html"}, [azar.to_s, "<h1>Hello world</h1>\nchuchu=#{envase}\n"]]
  end
end

Rack::Handler::WEBrick::run MoL.new
