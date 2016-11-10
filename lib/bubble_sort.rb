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

start = Time.now
p bubble_sort([2,1,4,2,1,5,6,7,888,234,2,-3,-102,2,1,4,2,1,5,6,7,888,234,2,-3,-102,2,1,4,2,1,5,6,7,888,234,2,-3,-102,2,1,4,2,1,5,6,7,888,234,2,-3,-102])
p Time.now - start