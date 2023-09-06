require "./habitacion"
class Casa
attr_accessor :dormitorio, :cocina, :baño, :cuarto_pilas
    def initialize

        @dormitorio = Habitacion.new
        @cocina=Habitacion.new("cocina")
        @baño=Habitacion.new('baño')
        @cuarto_pilas=Habitacion.new("Cuarto de pila")
    end

    def plano 
    p "Esta casa tiene #{@dormitorio}, #{@cocina}, #{@baño}, #{@cuarto_pilas}"
        
    end
    
end































