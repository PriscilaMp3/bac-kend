puts("--------------------1-------------------------")
def blank_seating_chart(number_of_rows, seats_per_row)

  # return a 2d array to represent a seating chart that contains
  # number_of_rows nested arrays, each with seats_per_row entries of nil to
  # represent that each seat is empty.

  # Example: blank_seating_chart(2, 3) should return:
  # [
  #   [nil, nil, nil],
  #   [nil, nil, nil]
  # ]

  Array.new(number_of_rows, Array.new(seats_per_row))


  # NOTE: if one of the nested arrays is changed, the others should not
  # change with it
end

matrix = blank_seating_chart(2, 3)

matrix.each{ |row| p row }

puts("----------------------------------------------")
puts("---------------------2-------------------------")


def add_seat_to_row(chart, row_index, seat_to_add)
  # take a chart (2d array)  and add seat_to_add to the end of the row that is
  # at row_index index of the chart, then return the chart

  chart[row_index] << seat_to_add
  chart
end

matrix = 
[
[nil, 'Bob', 'Joe'],
[nil, nil, 'Bill']
]

cuadro = add_seat_to_row(matrix, 0, 'Jack')

cuadro.each { |row| p row }
puts("---------------------3-------------------------")

def add_another_row(chart, row_to_add)
  # take a chart and add row_to_add to the end of the chart,
  # then return the chart.

  chart << row_to_add
  chart

end

matrix2 = ['Bo', nil, 'Kim']

resultado = add_another_row(matrix, matrix2)

resultado.each { |row| p row }

puts("----------------------------------------------")
puts("---------------------4-------------------------")

def delete_seat_from_row(chart, row_index, seat_index)
  # take a chart and delete the seat at seat_index of the row at row_index of
  # the chart, then return the chart
 chart[row_index].delete_at(seat_index)

 chart 
  # Hint: explore the ruby docs to find a method for deleting from an array!

end

matrix5 =  [[nil, 'Bob', 'Joe'], [nil, nil, 'Bill']]

result = delete_seat_from_row(matrix5,0,1)

result.each {|row| p row }
puts("----------------------------------------------")
puts("---------------------5-------------------------")

def delete_row_from_chart(chart, row_index)
  # take a chart and delete the row at row_index of the chart,
  # then return the chart
  chart[row_index].pop 
  chart 

end

matrix3 = [[nil, 'Bob', 'Joe'], [nil, nil, 'Bill']]

respuesta = delete_row_from_chart(matrix3, 0)

respuesta.each {|row| p row }

puts("----------------------------------------------")
puts("---------------------6-------------------------")

def count_empty_seats(chart)
  # take a chart and return the number of empty (nil) seats in it
count = 0
  chart.flatten.each { |seat| count += 1 if seat.nil? }
count
  # NOTE: chart should not be mutated
end

arr = [[nil,'Bob','Joe'], [nil,nil,'Bill']]
count_empty_seats(arr)

puts("----------------------------------------------")
puts("---------------------7-------------------------")


def find_favorite(array_of_hash_objects)
  # take an array_of_hash_objects and return the hash which has the key/value
  # pair :is_my_favorite? => true. If no hash returns the value true to the key
  # :is_my_favorite? it should return nil

  array_of_hash_objects.flatten.each do  |value|
     return true if value[is_my_favorite?] == true
     end
     nil
  end
  # array_of_hash_objects will look something like this:
  # [
  #   { name: 'Ruby', is_my_favorite?: true },
  #   { name: 'JavaScript', is_my_favorite?: false },
  #   { name: 'HTML', is_my_favorite?: false }
  # ]

  # TIP: there will only be a maximum of one hash in the array that will
  # return true to the :is_my_favorite? key