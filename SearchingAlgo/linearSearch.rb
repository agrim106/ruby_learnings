#Linear Search Iterates through each element to find the target value. 
arr1 = [1,2,3,4,5,66,7,8,9,12]
def linear_search(arr1, target)
  arr1.each_with_index do |element , index| 
    return index if element == target
  end 
    -1 #if the target is not present in the arr then It will return -1.  
  end 
puts linear_search(arr1 , 4)
