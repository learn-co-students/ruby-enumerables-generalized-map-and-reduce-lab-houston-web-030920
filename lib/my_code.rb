def map(source_array)
  #So we're literally creating what map does
  arr = []
  source_array.each do |e|
    arr << yield(e)
  end
  arr
end


def reduce(array, sv = nil)
  if sv
    sum = sv
    array.each do |e|
      sum = yield(sum, e)
    end
  else
    sum = 0
    array.each do |e|
      sum = yield(sum,e)
    end
  end
  sum
end
