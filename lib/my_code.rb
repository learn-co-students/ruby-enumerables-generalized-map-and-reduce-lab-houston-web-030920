# Your Code Here
def map(array)
  new_array = []
  i=0
  while i<array.length do
    new_array<<yield(array[i])
  i +=1
  end
  new_array
end
  
   
def reduce(array, start=nil)
  if start 
    i=0 
    sum = start
  else 
    i=1
    sum=array[0]
  end
  
  while i<array.length
    sum = yield(sum, array[i])
    i=i+1
  end
    sum
end