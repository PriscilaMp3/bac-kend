require './animales'

class Perro < Animales
    def hablar
        puts "#{@nombre} dice Wof, Wof!"
    end
end
