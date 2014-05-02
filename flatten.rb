#Refactor for any number of nested arrays
my_arr = [1,2,[3,4],[5,[6]]]

$flattened_array = []

def flatten(arr)
for number in arr
if number.is_a? Integer
  $flattened_array.push number
else
  flatten(number)
end
end
  $flattened_array
end

# writes [1,2,3,4,5,6] to console
p flatten(my_arr)

# OPTIMAL CODE
# def flatten(array, new_array=[])
#   array.inject(new_array) { |result, element| element.class != Array ? result << element : flatten(element, new_array)  }
# end