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
  if len == 1
    return array
  else
    #test = merge_sort(array)
    right = array[0...len/2]
    left = array[len/2..-1]
    p right
    p left
  end
end 

p merge_sort([9,4])