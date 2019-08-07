# frozen_string_literal: true

def bubble_sort(arr)
  arr.each do
    arr.each_with_index do |_, index|
      unless index == arr.length - 1
        if arr[index] > arr[index.next]
          tmp = arr[index]
          arr[index] = arr[index.next]
          arr[index.next] = tmp
        end
      end
    end
  end
end

def bubble_sort_by(array)
  for i in 0...array.length
  for j in 0...array.length - 1
    if yield(array[j], array[j.next]).positive?
    temp = array[j]
    array[j] = array[j.next]
    array[j.next] = temp
    end
    end
  end
end

arr=["hi","hello","hey"]
bubble_sort_by(arr) do |left,right|
  left.length - right.length
end
puts arr

# arr=[4,3,78,2,0,2]

# bubble_sort(arr)
# puts arr