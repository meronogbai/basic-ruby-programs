def bubble_sort(arr)
  while true
    swapped = false
    for i in 0..(arr.length-2)
      if arr[i]>arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end


p bubble_sort([4,3,78,2,0,2])