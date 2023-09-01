
def bubble_sort(array)
    n = array.length
  
    for i in 0..n-1
      condicional = false
  
      for j in 0..n-i-2
        if array[j] > array[j+1]
          array[j], array[j+1] = array[j+1], array[j] 
          condicional = true
        end
      end
  
      break unless condicional
    end
  
    array
  end
  
  array=[2,4,5,6,3,6,2,1] 
  p bubble_sort(array)

