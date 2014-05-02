require 'benchmark'
include Benchmark

#write an rspec test to make sure it works


def find_the_median_qs(est, arr)
   sorted = arr.sort
   sorted[sorted.length / 2]


def QuickSelect(A, k)
	r = rand(1..100)
  pivot = A[r]
  Arr1 = []
  Arr2 = []
   for i in 1..A.length
    if A[i] < pivot 
      A1.push A[i]
    elsif A[i] > pivot
      A2.push A[i]
    else
    end
  end
  if k <= A1.length
    return QuickSelect(A1, k)
  elsif k > A.length - A2.length
    return QuickSelect(A2, k - (length(A) - length(A2))
  else
    # it's equal to the pivot
   	 return pivot
   end
 	end
 end


array = [1..100].to_a

puts numbers = (1..10000).to_a
#puts QuickSelect(Arr,(Arr.length + 1)/ 2)end




#Without sort

def find_the_median(est, arr)

  j = 0 #keep track of number bigger
  k = 0 #keep track of number less

  arr.each do |element|
    if est > element
      k += 1
    else est < element
      j += 1
    end
  end

  if j == k
    return est
  elsif k < j
    est += 1
    find_the_median(est, arr)
  else k > j
    est -= 1
    find_the_median(est, arr)
  end

end

numbers = (1..10000).to_a
numbers.shuffle

est = rand(1..10000)

# find_the_median(est, numbers) #block in the benchmark

#With sort
def median(arr)
  arr.each_index do |i|  #passes the index of the element instead of the element itself
    (arr.length - i - 1).times do |job|
      if arr[job] > arr[job + 1]
        arr[job], arr[job + 1] = arr[job + 1], arr[job]
      end
    end
  end

  if arr.length % 2 == 0
    first = arr[(arr.length - 1) / 2]
    second = arr[(arr.length + 1) / 2]
    median = (first.to_f + second.to_f) / 2
    median
  else arr.length % 2 != 0
    if arr.length <= 3
      arr[1]
    else
      arr[(arr.length - 1) / 2]
    end
  end
end

median(numbers)

Benchmark.benchmark(CAPTION, 7, FORMAT, ">total:", ">avg:") do |x|
  x.report("find_the_median_qs") {puts find_the_median_qs(est, numbers) }
  x.report("without_sorting") {puts find_the_median(est, numbers) }
  x.report("with_sorting") {puts median(numbers) }
end
