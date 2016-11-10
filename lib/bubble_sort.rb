def bubble_sort(array)
  switched = 
  array_index = 0
  while true
    array_next = array_index + 1
    if array[array_next] < array[array_index]
      array[array_index], array[array_next] = array[array_next], array[array_index]
      switched = true 
    end
    array_index += 1
    
    if array_index >= (array.length - 1) 
      array_index = 0 
      return array unless switched
      switched = false
    end
  end
  array
end

p bubble_sort([2,1,4,3,7,8, 500,3,2,1,4,-9,-2,0])