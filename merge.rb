





def merge(arr1, arr2)

arr3 = []
i =0
j =0
while (i < arr1.length) && (j < arr2.length) do
		if arr1[i] < arr2[j]
			arr3 << arr1[i]
			i+=1
		else
			arr3 << arr2[j]
			j+=1
		end
	end
	return arr3
end
p merge(array_1, array_2)


def mergeSort(arr)
		if arr.length == 1 
			return arr
		else 
			arr1 = arr[0..arr.length/2]
			arr2 = arr[arr.length/2+1 .. arr.length]
			arr1 = mergeSort(arr1)
			arr2 = mergeSort(arr2)
			merge(arr1, arr2)
		end
end


arr = [5,8,9,12,11,1,4]
mergeSort(arr)
#merge(array_1, array_2)
# => [4,5,6,7,8,9,10,11]

