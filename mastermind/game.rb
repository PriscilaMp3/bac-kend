require 'colorize'

class Game
  COLORS = %w[red blue green yellow]
  MAX_TURNS = 12

  def initialize
    @code = generate_sequence
    @board = Board.new
  end

  def play
    puts '!!--Mastermind--!!'
    puts '!! Probemos tu ingenio !!'
    puts '¿Deseas ser el creador del código (C) o el adivinador (A)?'
    choice = gets.chomp.downcase
    if choice == 'c'
      create_code
    elsif choice == 'a'
      player = Player.new(@code)
      player.play_turns(MAX_TURNS, @board)
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

  private

  def create_code
    puts 'Ingresa el código secreto (ejemplo: red blue green yellow):'
    input = gets.chomp.split
    if valid_code?(input)
      @code = input
      computer = Computer.new(@code)
      computer.computer_guess(MAX_TURNS, @board)
    else
      puts 'Secuencia inválida. Se debe ingresar cuatro colores de la lista escritos de forma correcta: red, blue, green, yellow.'
      create_code
    end
  end

  def valid_code?(input)
    input.length == 4 && input.all? { |color| COLORS.include?(color) }
  end

  def generate_sequence
    COLORS.sample(4)
  end
end

class Player
  def initialize(code)
    @code = code
  end

  def play_turns(max_turns, board)
    (1..max_turns).each do |turn|
      guess = get_player_guess
      feedback = give_feedback(guess)
      board.add_attempt(turn, guess, feedback)
      board.display_board

      if guess == @code
        puts '¡Felicidades! Has adivinado el código secreto.'
        puts "La combinación ganadora era: #{@code}"
        break
      elsif turn == max_turns
        puts 'Juego terminado. Agotaste tus intentos.'
        puts "La combinación ganadora era: #{@code}"
        break
      end
    end
    board.play_again
  end

  private

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

  def valid_code?(input)
    input.length == 4 && input.all? { |color| Game::COLORS.include?(color) }
  end

  def give_feedback(guess)
    feedback = []
    code_copy = @code.dup
    guess.each_with_index do |color, index|
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

class Computer
  def initialize(code)
    @code = code
  end

  def computer_guess(max_turns, board)
    (1..max_turns).each do |turn|
      guess = generate_sequence
      feedback = give_feedback(guess)
      board.add_attempt(turn, guess, feedback)
      board.display_board

      if guess == @code
        puts '¡La computadora ha adivinado el código secreto!'
        break
      elsif turn == max_turns
        puts 'Juego terminado. La computadora no ha adivinado el código.'
        break
      end
    end
    board.play_again
  end

  private

  def generate_sequence
    Game::COLORS.sample(4)
  end

  def give_feedback(guess)
    feedback = []
    code_copy = @code.dup
    guess.each_with_index do |color, index|
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

class Board
  def initialize
    @attempts = []
  end

  def add_attempt(turn, guess, feedback)
    @attempts << { turn: turn, guess: guess, feedback: feedback }
  end

  def display_board
    puts '-----------------------------------'
    puts '| # Intento |  Colores  |  Guía  |'
    puts '-----------------------------------'

    @attempts.each do |attempt|
      puts "|     #{attempt[:turn]}     |  #{print_colors(attempt[:guess])}  | #{format_feedback(attempt[:feedback])} |"
    end

    puts '-----------------------------------'
  end

  def format_feedback(feedback)
    feedback.map do |fb|
      case fb
      when 'correct_color'
        '⬤ '.colorize(:white)
      when 'correct_position'
        '⬤ '.colorize(:green)
      else
        '⬤ '.colorize(:red)
      end
    end.join('')
  end

  def print_colors(colors)
    colors.map { |color| "⬤ ".colorize(color.to_sym) }.join('')
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
end

# Se genera un nuevo objeto de la clase para ejecutar la cadena de métodos
game = Game.new
game.play
