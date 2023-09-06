class Animales
    attr_accessor :nombre, :edad

    def inventar_nombre
        @nombre = nombre
    end

    def inventar_edad
        @edad = edad
    end

    def reportar_edad
        puts "#{@nombre} tiene #{@edad} años"

    end


def hablar
  puts "#{@nombre} dice woof,woof!"
end


    def moverse(destino)
        puts "#{@nombre} se mueve a #{destino}"
    end

  end