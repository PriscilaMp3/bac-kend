class Mago
    attr_accessor :nombre, :hechizo
    def encantamiento(objetivo)
        puts "#{@nombre} invoca #{@hechizo} sobre #{objetivo}"
    end
    
end

