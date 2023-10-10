def fib(n, num_array)
  if n == 0
    num_array.push(0)
  elsif n == 1
    num_array.push(0,1)
  else
    num_array.push(0,1)
    turns = n - 2
    for i in 1..turns
      result = num_array[i-1] + num_array[i]
      num_array.push(result)
    end
    num_array
  end
end

p fib(8, Array.new)

def fib_recursive(n, size)
  num_array = []
  if n == 0
    num_array.push(n)
  elsif n == 1
    num_array.push(n-1 ,n)
  else
    num_array = fib_recursive(n-1, size)
    result = num_array[n-1] + num_array[n-2]
    num_array.push(result)
  end
  return num_array.take(size)
end

p fib_recursive(8, 8)

def merge_sort(array)
  len = array.length
  if len < 2
    return array
  end 
  left = array[0...len/2]
  right = array[len/2..-1]
  
  merge_sort(left)
  merge_sort(right)

  i = 0
  j = 0
  k = 0

  while i < left.length && j  < right.length
    if left[i] < right[j]
      array[k] = left[i]
      i += 1
    else
      array[k] = right[j]
      j += 1
    end
    k += 1
  end
  while i < left.length
    array[k] = left[i]
    i += 1
    k += 1
  end

  while j < right.length
    array[k] = right[j]
    j += 1
    k += 1 
  end 
  array
end 

p merge_sort([9,4,3,5,6,7,1])

random_numbers = Array.new(100) { rand(1..1000) }
p random_numbers
p merge_sort(random_numbers)