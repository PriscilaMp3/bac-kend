require_relative 'calculator'

def run_game
    puts "Bienvenida Bestie, aqui esta trabajando tu calculadora ya, tqm"
    puts 'Ingresa el primer numero:'
    num1 = gets.to_f

    puts 'Ingrese el segundo numero'
    num2= gets.to_f

    puts 'Selecciona una operacion:'

    puts '1. Suma'
    puts '2. Resta'
    puts '3. Multiplicacion'
    puts '4. Division'

choise = gets.to_i

case choise
    when 1
        result = Calculator.add(num1, num2)
        operator ='+'
    when 2
        result = Calculator.subtract(num1, num2)
        operator ='-'
    when 3
        result = Calculator.multiply(num1, num2)
        operator ='*'
    when 4
        begin
                result = Calculator.div(num1, num2)
                operator ='/'
            rescue StandardError => e
                puts "Error: #{e.message}"
            return
        end
    else
        puts "Opcion no valida"
        return
    end
    puts "Resultado: #{num1} #{operator} #{num2} = #{result}"
end

run_game