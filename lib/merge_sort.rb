def merge_sort(arr)
  return arr if arr.size == 1
  arr_left = arr[0...arr.size/2]
  arr_right = arr[arr.size/2..-1]
  arr_left = merge_sort(arr_left)
  arr_right = merge_sort(arr_right)
  merge(arr_left, arr_right) #2,1
end

def merge(arr_left, arr_right)
  arr_new = []
  goal_length = arr_left.length + arr_right.length
  until arr_new.length == goal_length 
    right_value = arr_right[0] || 9999999 #talk about during code review
    left_value = arr_left[0] || 9999999 #talk about during code review
    if right_value <= left_value
      arr_new << right_value
      arr_right.shift 
    elsif right_value > left_value 
      arr_new << left_value 
      arr_left.shift
    end
  end
  return arr_new
end

start = Time.now
p merge_sort([2,1,4,2,1,5,6,7,888,234,2,-3,-102,2,1,4,2,1,5,6,7,888,234,2,-3,-102,2,1,4,2,1,5,6,7,888,234,2,-3,-102,2,1,4,2,1,5,6,7,888,234,2,-3,-102])
p Time.now - start

# [1,2]

# [1] [2]

# get 1, 2

# compare 1,2 

# store 1

# arrays are empty 

# get a new value for 1, not for 2 
# compare nil, 2

# store 2 

  #   left_value = arr_left.shift unless arr_left.empty? 
  #   right_value = arr_right.shift unless arr_right.empty?  
  #   if right_value >= left_value
  #     arr_new << right_value 
  #   elsif right_value < left_value
  #     arr_new << left_value #2
  #   end
  # end