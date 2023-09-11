class Calculator

    def add(num1,num2)
        num1 + num2
    end
    
    def subtract(num1,num2)
        num1 - num2
    end
    
    def multiply(num1,num2)
        num1 * num2
    end
    
    def divide(num1,num2)
        raise "No se puede dividir por cero" if num2 == 0
        num1 / num2.to_f
    end
    
end