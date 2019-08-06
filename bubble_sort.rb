def bubble_sort(arr)  
  arr.each { |element|
    arr.each_with_index { |element,index|
    unless index == arr.length - 1
    if arr[index] > arr[index + 1]        
      tmp = arr[index]
      arr[index] = arr[index + 1]
      arr[index+1] = tmp
    end
    end
    }
  }
end

def bubble_sort_by (array)
  for i in 0...array.length
  for j in 0...array.length - 1 
    check=yield(array[j],array[j + 1])
    if check > 0
    temp = array[j]
    array[j]=array[j + 1]
    array[j + 1] = temp
    end
    end
  end
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end

# arr=[4,3,78,2,0,2]

# bubble_sort(arr)
# puts arr