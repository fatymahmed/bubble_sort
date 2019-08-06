def bubble_sort(arr)
    for i in 0..arr.length-1
            for j in 0..arr.length-2
                    if arr[j]>arr[j+1]
                        tmp=arr[j]
                        arr[j]=arr[j+1]
                        arr[j+1]=tmp
                    end
            end
        end
end
