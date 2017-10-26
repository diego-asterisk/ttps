require_relative 'my_random'
require_relative 'moderator'

class Bingo
  include Moderator
  attr_accessor :line_queries, :bingo_queries
end

r = MyRandom.new(99) 
b = Bingo.new
finalizado = false

loop do
  break if r.available.empty?
  number = r.next
  puts number
  if (b.line?(number)) then
    puts 'Linea!'
    break
  end
end

loop do
  break if r.available.empty?
  number = r.next
  puts number
  if (b.bingo?(number)) then
	puts 'Bingo!'
	 break           
  end
end


