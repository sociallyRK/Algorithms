
def median(arr)
	i = 0 
	while i < arr.length/2
		p "Iteration"
		p "min #{arr.min}"
		p "index #{arr.index(arr.min)}"
		p arr.pop(arr.index(arr.min))
		p "i #{i} arr #{arr}"
		i+=1
	end
	p arr.min
end

arr = [2,4,6,8,0]
puts median(arr)


