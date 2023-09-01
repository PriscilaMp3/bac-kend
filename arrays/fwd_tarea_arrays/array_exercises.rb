def nil_array(number)
    # return an array containing `nil` the given number of times
    Array.new(number, "nill")
  end

  puts nil_array(10)
  
  def first_element(array)
    # return the first element of the array
    array[0]
  end

  lista_numeros = [10,2,3,4]

  puts first_element(lista_numeros)

  def third_element(array)
    # return the third element of the array
    array[2]
  end

  lista_sabores = ['vainilla','café', 'amaranto']

  puts third_element(lista_sabores )


  
  def last_three_elements(array)
    # return the last 3 elements of the array
  array[2..4]
  end
  lista_colores = ['black', 'green', 'blue', 'white', 'red']
  puts last_three_elements (lista_colores)


  def add_element(array)
    # add an element (of any value) to the array
    array << 5
  end
  
  numeros_lista = [1,2,6,7]
  puts add_element(numeros_lista)


  def remove_last_element(array)
    # Step 1: remove the last element from the array
    array= ['papa', 'elote', 'chile', 'camote','zanahorina', 'tomate']
    array.pop
    # Step 2: return the array (because Step 1 returns the value of the element removed)
  puts array
  end
  
  puts remove_last_element(0)

  def remove_first_three_elements(array)
    # Step 1: remove the first three elements
    lista= ['papa', 'elote', 'chile', 'camote','zanahorina', 'tomate']
    # Step 2: return the array (because Step 1 returns the values of the elements removed)
    puts lista.drop(array)
  end

  remove_first_three_elements(3)
  
  def array_concatenation(original, additional)
    # return an array adding the original and additional array together
    original.concat(additional)
  end

  new_array_list =[7,8,9,10]
  puts array_concatenation(numeros_lista, new_array_list)
  
  def array_difference(original, comparison)
    # return an array of elements from the original array that are not in the comparison array
    original-comparasion
  end

  
  def empty_array?(array)
    # return true if the array is empty
    array.empty?
  end
  puts empty_array? (numeros_lista)
  
  def reverse(array)
    # return the reverse of the array
    array.reverse
  end
  puts reverse(numeros_lista)

  def array_length(array)
    # return the length of the array
    
    puts array.length
    
  end

  lista= ['papa', 'elote', 'chile', 'camote','zanahorina', 'tomate']
  array_length(lista)
  
  def include?(array, value)
    # Si solamente se quiere comprobar si existe, usar include
    if array.include?(value)
      puts "El arreglo SÍ tiene el elemento #{value}"
    else
      puts "El arreglo no incluye el elemento #{value}"
    end
  end
    
  arreglo = ["Kiara", "Astrid", "Bairon", "Jackie", "Alfredo"]
  puts include?(arreglo, "Astrid")

  def join(array, separator)
    # return the result of joining the array with the separator
    array.join(separator)

  end
  array_string=[1,2,3,4,5,6,7,8]
  puts join(array_string, "-")