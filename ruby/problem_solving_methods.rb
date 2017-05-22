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