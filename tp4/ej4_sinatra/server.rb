# Usando Sinatra
#Implementá una app llamada "MoL" de Rack que responda con un número al azar entre 1 y 42, 
# y que devuelva el status HTTP 200 sólo en caso que el número a devolver sea 42, 
# en cualquier otro caso debe retornar un status 404.
require 'bundler'
Bundler.require
require_relative 'lib/MoL'

set :port=>8080

get '/' do
  mol = MoL.new.call
  status mol[0]
  headers mol[1]
  mol[2]  #  'hello world'
end



