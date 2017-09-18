require_relative '../rot_13.rb'
require 'benchmark'

iterations = 100_000
Benchmark.bm(27) do |bm|
  bm.report('rot_13_tr') do
    iterations.times do
      rot_13_tr("¡Bienvenidos a la cursada 2015 de TTPS Opción Ruby!")
    end
  end

  bm.report('rot_13_hash') do
    iterations.times do
      rot_13_hash("¡Bienvenidos a la cursada 2015 de TTPS Opción Ruby!")
    end
  end

  bm.report('rot_13_gsub') do
    iterations.times do
      rot_13_tr("¡Bienvenidos a la cursada 2015 de TTPS Opción Ruby!")
    end
  end
end
