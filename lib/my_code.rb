def map(array)
  new_array = []
  i = 0 
  while i < array.length do
   new_array.push(yield(array[i]))
    i += 1
  end
  new_array
end

def reduce(array, starting_point = nil)
  if starting_point
    value = starting_point
    i = 0
  else
    value = array[0]
    i = 1
  end
  while i < array.length do
    value = yield(value, array[i])
    i += 1 
  end
  value
end