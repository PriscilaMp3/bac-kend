require './animales'

class Gato < Animales

    def hablar 
        puts "#{@nombre} dice miau, miau!"
    end
end