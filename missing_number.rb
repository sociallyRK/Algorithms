numbers = (1..5).to_a

numbers = numbers.shuffle()
numbers.pop()

def sum(array)
  array.inject(0) do |sum, i|
    sum += i
  end
end

def find_missing_number(numbers)
	expected_sum = ((numbers.length+1) * ((numbers.length+1) + 1))/2
	sum_array = sum(numbers)
  return (expected_sum - sum_array)
end

puts find_missing_number(numbers)