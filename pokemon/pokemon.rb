require 'csv'
CSV.open("pokemon.csv", "w") do |csv|
    csv << ["Nombre","Nivel","Tipo"]
    csv << ["Pikachu", "25", "Electrico"]
    csv << ["Charmander","18", "Fuego"]
    csv << ["Squirtle", "20", "Agua"]
end

CSV.foreach("pokemon.csv") do |fila|
    puts "Nombre: #{fila[0]}, Tipo: #{fila[1]}, Nivel: #{fila[2]}"
end

