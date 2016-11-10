def insert(array, right_index, value)
    # value is the value of array[right_index + 1]
    # right_index is the furthest right sorted element

    # Step through sorted elements right to left.
    # As long as your value is less than the element
    # at array[i] and you still have elements 
    while(right_index >= 0 && array[right_index] > value)
        # copy the element
        array[right_index+1] = array[right_index]
        right_index -= 1
    end

    # insert the actual element
    array[right_index+1] = value;
end

def insertion_sort(array)
  left_index = 0
  until left_index == (array.length - 1)
    insert(array,left_index,array[left_index+1])
    left_index += 1
  end
  array
end

start = Time.now
p insertion_sort([2,1,4,2,1,5,6,7,888,234,2,-3,-102,2,1,4,2,1,5,6,7,888,234,2,-3,-102,2,1,4,2,1,5,6,7,888,234,2,-3,-102,2,1,4,2,1,5,6,7,888,234,2,-3,-102])
p Time.now - start
# insert([9,7, 4,5],0,7)
# [9|7,4,5]
# [9,7, 4,5]
# [9,7, 4,5]