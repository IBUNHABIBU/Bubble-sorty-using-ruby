def bubble_sort(arr)
    n = arr.length
    loop do
        swapped = false
        (n-1).times do |i|
            if arr[i]>arr[i+1]
                arr[i],arr[i+1]= arr[i+1],arr[i]
                swapped = true
            end
        end
        break if not swapped
    end
    arr
end 


def bubble_sort_by(array)
    sorted = false
    while !sorted
      sorted = true
      index = 0
      array.each_cons(2) do |x|
        if yield(x) > 0
          sorted = false
          array[index],array[index + 1] = array[index + 1], array[index]
        end
        index += 1
      end
    end
    array
  end
  

a =bubble_sort_by(['hi','hello','hey']) do |left,right|
    left.length - right.length
  end
  print a
  