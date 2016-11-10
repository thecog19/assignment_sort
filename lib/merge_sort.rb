def merge_sort(arr)
  return arr if arr.size == 1
  arr_left = arr[0...arr.size/2]
  arr_right = arr[arr.size/2..-1]
  arr_left = merge_sort(arr_left)
  arr_right = merge_sort(arr_right)
  merge(arr_left, arr_right)
end

def merge(arr_left, arr_right)
  arr_new = []
  left_value = arr_left.shift
end

function mergeSort(array) {
    // if the array is one element long, just return it

    // mergeSort() the left half of the array

    // mergeSort() the right half of the array

    // merge() the two halves

    // return the merged array
}