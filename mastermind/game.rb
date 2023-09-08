require 'colorize'
class Mastermind
 COLORS = %w[red blue green yellow]
  MAX_TURNS = 12

  def initialize
    @code = generate_code
    @attempts = []
  end

  def play
    puts 'Bienvenido a Mastermind!'
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

  private

  def create_code
    puts 'Ingresa el código secreto (ejemplo: red blue green yellow):'
    input = gets.chomp.split
    if valid_code?(input)
      @code = input
      player_guess
    else
      puts 'Código no válido. Debe contener cuatro colores de la lista: red, blue, green, yellow.'
      create_code
    end
  end

  def player_guess
    (1..MAX_TURNS).each do |turn|
      puts "\nTurno #{turn}"
      display_board
      guess = generate_random_guess
      feedback = give_feedback(guess)
      @attempts << { guess: guess, feedback: feedback }
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



  def display_board
    
    @attempts.each_with_index do |attempt, index=1|
      puts '------------------------'
      puts '| Intento |  Código   |'
      puts '------------------------'
      print "|    #{index + 1}    | "
      print_colors(attempt[:guess])
      print '  | '
      print_feedback(attempt[:feedback])
      puts ' |'
    end
    puts '------------------------'
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

  def get_player_guess
    puts 'Ingresa tu adivinanza (ejemplo: red blue green yellow):'
    input = gets.chomp.split
    if valid_code?(input)
      input
    else
      puts 'Adivinanza no válida. Debe contener cuatro colores de la lista: red, blue, green, yellow.'
      get_player_guess
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

  def valid_code?(input)
    input.length == 4 && input.all? { |color| COLORS.include?(color) }
  end

  def generate_code
    COLORS.sample(4)
  end

  def generate_random_guess
    COLORS.sample(4)
  end

  def play_again
    puts '¿Deseas jugar de nuevo? (S/N)'
    choice = gets.chomp.downcase
    if choice == 's'
      Mastermind.new.play
    elsif choice == 'n'
      puts '¡Gracias por jugar!'
      exit
    else
      puts 'Opción no válida. Debes elegir S o N.'
      play_again
    end
  end
end

game = Mastermind.new
game.play
