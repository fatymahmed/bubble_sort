def bubble_sort(arr)
  for i in 0..arr.length-1
    for j in 0..arr.length-2
      if arr[j]>arr[j+1]
        tmp = arr[j]
        arr[j] = arr[j+1]
        arr[j+1] = tmp
      end
      end
      end
end


def bubble_sort_by (array)

  for i in 0...array.length
    for j in 0...array.length-1
      check=yield(array[j],array[j+1])
        if check>0
          temp=array[j]
          array[j]=array[j+1]
          array[j+1]=temp
        end
    end
  end
    
    puts array
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end
