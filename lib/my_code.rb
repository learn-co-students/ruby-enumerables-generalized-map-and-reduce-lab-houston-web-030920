def map (array)
  new=[]
  i=0 
  while i<array.length 
  new.push(yield(array[i]))
  i += 1 
  end 
  new
end

 
def reduce (array, sv=nil)
  if sv 
    result= sv 
    i = 0 
  else 
    result= array[0]
    i = 1 
  end 
  while i < array.length 
  result = yield(result, array[i])
  i += 1 
  end 
  result
end 


