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

#arr = [42, 89, 23, 1]

#p search_array(arr, 1)
#p search_array(arr, 23)
#p search_array(arr, 24)


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