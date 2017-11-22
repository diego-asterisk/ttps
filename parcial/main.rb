require_relative 'my_random'
require_relative 'moderator'

class Bingo
   include Moderator
   
   def initialize(r)
      @r = r
   end
   
   def play
      r = @r
      loop do
        break if r.available.empty?
        number = r.next
        puts number
        if (self.line?(number)) then
          puts 'Linea!'
          break
        end
        if (self.bingo?(number)) then
         puts 'Bingo!'
          break           
        end
      end

      loop do
        break if r.available.empty?
        number = r.next
        puts number
        if (self.bingo?(number)) then
         puts 'Bingo!'
          break           
        end
      end
      
   end

end

# meter esto en la clase y usar initialize y play
r = MyRandom.new(99) 
b = Bingo.new(r)
b.play



