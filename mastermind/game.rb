require 'colorize'
class Game
  COLORS = %w[red blue green yellow]
  MAX_TURNS = 12

  def initialize
    @code = generate_sequence
    @attempts = []
  end

  # Metodos del Juego

  def play
    puts '!!--Mastermind--!!'
    puts '!! Probemos tu ingenio !!'
    puts '¿Deseas ser el creador del código (C) o el adivinador (A)?'
    choice = gets.chomp.downcase
    if choice == 'c'
      create_code
    elsif choice == 'a'
      computer_guess
    else
      puts 'Opción no válida. Debes elegir C o A.'
      play
    end
  end

  def play_again
    puts '¿Deseas jugar de nuevo? (S/N)'
    choice = gets.chomp.downcase
    if choice == 's'
      Game.new.play
    elsif choice == 'n'
      puts '¡Gracias por jugar!'
      exit
    else
      puts 'Opción no válida. Debes elegir S o N.'
      play_again
    end
  end

  def valid_code?(input)
    input.length == 4 && input.all? { |color| COLORS.include?(color) }
  end

  private

  def create_code
    puts 'Ingresa el código secreto (ejemplo: red blue green yellow):'
    input = gets.chomp.split
    if valid_code?(input)
      @code = input
      player_guess
    else
      puts 'Secuencia inválida. Se debe ingresar cuatro colores de la lista escritos de forma correcta: red, blue, green, yellow.'
      create_code
    end
  end

    # Metodos del funcionamiento de la Computadora

  def generate_sequence
    COLORS.sample(4)
  end

  def computer_guess
    (1..MAX_TURNS).each do |turn|
      guess = get_player_guess
      feedback = give_feedback(guess)
      @attempts << { guess: guess, feedback: feedback }
      puts "\nTurno #{turn}"
      display_board 
      if guess == @code
        puts '¡Felicidades! Has adivinado el código secreto.'
        puts "La combinacion ganadora era: #{@code.join(', ')}"
        break
      elsif turn == MAX_TURNS
        puts 'Juego terminado. Agotaste tus intentos.'
        puts "La combinacion ganadora era: #{@code.join(', ')}"
        break
      end
    end
    play_again
  end

  #Metodos del Jugador

  def player_guess
    (1..MAX_TURNS).each do |turn|
      guess = generate_sequence
      feedback = give_feedback(guess)
      @attempts << { guess: guess, feedback: feedback }
      puts "\nTurno #{turn}"
      display_board
      if guess == @code
        puts '¡La computadora ha adivinado el código secreto!'
        break
      elsif turn == MAX_TURNS
        puts 'Juego terminado. La computadora no ha adivinado el código.'
        break
      end
    end
    play_again
  end

  def get_player_guess
    puts 'Adivina la combinación de colores (ejemplo: red blue green yellow):'
    input = gets.chomp.split
    if valid_code?(input)
      input
    else
      puts 'Secuencia inválida. Se debe ingresar cuatro colores de la lista escritos de forma correcta: red, blue, green, yellow.'
      get_player_guess
    end
  end

  #Metodos del Tablero

  def display_board
    @attempts.each_with_index do |attempt, index=1|
      puts '-----------------------------------'
      puts '| # Intento |  Colores  |  Guía  |'
      puts '-----------------------------------'
      print "|     #{index + 1}     |  "
      print_colors(attempt[:guess])
      print ' | '
      print_feedback(attempt[:feedback])
      puts '|'
    end
    puts '-----------------------------------'
  end

  def print_colors(colors)
    colors.each { |color| print "⬤ ".colorize(color.to_sym) }
  end

  def print_feedback(feedback)
    feedback.each do |fb|
      case fb
      when 'correct_color'
        print '⬤ '.colorize(:white)
      when 'correct_position'
        print '⬤ '.colorize(:green)
      else
        print '⬤ '.colorize(:red)
      end
    end
  end

  def give_feedback(guess)
    feedback = []
    code_copy = @code.dup
    guess.each_with_index do |color, index=1|
      if color == code_copy[index]
        feedback << 'correct_position'
        code_copy[index] = nil
      elsif code_copy.include?(color)
        feedback << 'correct_color'
        code_copy[code_copy.index(color)] = nil
      end
    end
    feedback.fill('incorrect', feedback.length...4)
    feedback
  end

end

#Se genera un nuevo objeto de la clase para ejecutar la cadena de metodos 

game = Game.new
game.play
