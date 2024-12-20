#doing a question on Binary Search. 
arrays = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
def binary_searching(arrays,target)
  start = 0 
  last = arrays.length - 1 
  
 
  while start <= last 
    mid = (start + last) / 2
    if arrays[mid]== target 
      return mid 
  elsif arrays[mid] < target 
    start = mid + 1 
  else  
    last = mid -1
  end
end

return -1 
end 
target = 11 
result = binary_searching(arrays , target)
puts result 

