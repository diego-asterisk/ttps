def cuanto_falta?(fecha = Time.new(Time.now.year,Time.now.month,Time.now.day,23,59,59))
   cuanto_falta_desde(Time.now,fecha)
end
def cuanto_falta_desde(desde,hasta)
   ((hasta - desde) / 60).round
end
