l

def binary_search(target, arr, index_start, index_end)

index_middle = (index_start + index_end) / 2
middle = arr[index_middle]
p "#{arr[index_start]} #{arr[index_middle]} #{arr[index_end]}"

if index_start > index_end
	return puts "nil"
elsif target == middle
	return middle
elsif target > middle
	binary_search(target, arr, index_middle+1, index_end)
else
	binary_search(target, arr, index_start, index_middle-1)
end

end

def binary_search()
arr = [1,2,9,10,15,16]
puts binary_search(11, arr, 0, arr.length-1)


