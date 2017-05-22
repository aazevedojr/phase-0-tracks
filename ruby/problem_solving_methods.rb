# Simple Search:

def search_array(array, integer)
  verify = []
  array.each do |number|
    verify << (number == integer)
  end
  if verify.include?(true)
    verified = verify.take_while do |boolean|
      !boolean
    end
    verified.length
  else
    nil
  end
end

arr = [42, 89, 23, 1]

p search_array(arr, 1)
p search_array(arr, 23)
p search_array(arr, 24)


# Fibonacci Numbers:

def fib(terms)
  sequence = [0, 1]
  for i in 1..terms
    sequence << sequence[i] + sequence[i-1]
  end
  sequence.delete_at(-1)
  sequence.delete_at(-1)
  sequence
end

p fib(0)
p fib(1)
p fib(6)
p fib(100).last


# Sorting an Array:

#for i = 1 to (array's length - 1)
#    j = i
#    while j > 0 and array[j-1] > array[j]
#        swap array[j] and array[j-1]
#        j = j - 1
#    end while
#end for

def sort(array)
  for i in 1..(array.length - 1)
    j = i
    while j > 0 && array[j-1] > array[j]
      array[j], array[j-1] = array[j-1], array[j]
      j -= 1
    end
  end
  array
end

p sort(arr)