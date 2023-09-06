
class Habitacion 
attr_accessor :description

    def initialize(description = "Dormitorio")
        @description = description
    end
    def to_s
    "Esta habitacion es una #{@description}"
    end

end