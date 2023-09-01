def game
    puts "Bienvenido al juego, por favor ingresa tu nombre:"
    name = gets.chomp
    puts "Hola #{name}, ¡preparate para jugar!"

#Solicita al jugador que ingrese su nombre. Usa su nombre para imprimir un saludo.

objetivo = rand(1..100)

#Lleva un registro de cuántas suposiciones ha hecho el jugador. Antes de cada suposición, hazle saber cuántas suposiciones (de 10) le quedan.
intentos = 0
while intentos < 10 do

  # Solicita al jugador que haga una suposición sobre cuál es el número objetivo.

  puts "Tienes #{10 - intentos} intentos restantes. ¿Cuál es tu suposición?"
  suposición = gets.chomp.to_i

  # Si la suposición del jugador es menor que el número objetivo, di: "Vaya. Tu suposición fue BAJA". Si la suposición del jugador es mayor que el número objetivo, di: "Vaya. Tu suposición fue ALTA".

  if suposición < objetivo
    puts "Vaya. Tu suposición fue BAJA."
  elsif suposición > objetivo
    puts "Vaya. Tu suposición fue ALTA."
  else

    # Si la suposición del jugador es igual al número objetivo, dile: "Buen trabajo, [nombre]! ¡Adivinaste mi número en [número de suposiciones] intentos!"

    puts "Buen trabajo, #{name}! ¡Adivinaste mi número en #{objetivo} intentos!"
    break
  end

  # Aumenta el número de intentos del jugador.

  intentos += 1

end

#Si el jugador se queda sin turnos sin adivinar correctamente, di: "Lo siento. No acertaste mi número. Mi número era [objetivo]".
if intentos == 10
  puts "Lo siento. No acertaste mi número. Mi número era #{objetivo}"
end

  end

  game
