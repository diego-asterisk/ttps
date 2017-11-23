# Usando Sinatra
class MoL
  def call env=''
    azar = rand(1..42)
    status = 404
    status = 200 unless azar==42
    [status, {"Content-Type" => "text/html"}, [azar.to_s,'<hr>']]
  end
end
