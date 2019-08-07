# frozen_string_literal: true

def bubble_sort(arr)
  arr.each do
    arr.each_with_index do |_, index|
      unless index == arr.length - 1
        if arr[index] > arr[index + 1]
          tmp = arr[index]
          arr[index] = arr[index + 1]
          arr[index + 1] = tmp
        end
      end
    end
  end
end

def bubble_sort_by(array)
  array.each do
    array.each_with_index do |_, index|
      unless index == array.length - 1
        if yield(array[index], array[index + 1]).positive?
          temp = array[index]
          array[index] = array[index + 1]
          array[index + 1] = temp
        end
      end
    end
  end
end

arr = %w[hi hello hey]
bubble_sort_by(arr) do |left, right|
  left.length - right.length
end
puts arr

# arr=[4,3,78,2,0,2]

# bubble_sort(arr)
# puts arr
