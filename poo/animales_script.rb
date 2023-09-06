require_relative 'animales'
require_relative 'ave'
require_relative  'gato'
require_relative  'perro'

perro = Perro.new
perro.nombre = 'oky'
perro.edad = 3
perro.reportar_edad 

gato = Gato.new
gato.nombre = 'manchas'
gato.edad = 5
gato.reportar_edad 

ave = Ave.new
ave.nombre = 'quiquito'
ave.edad = 15
ave.reportar_edad 

gato.moverse('ala sala')
perro.moverse('al patio')
