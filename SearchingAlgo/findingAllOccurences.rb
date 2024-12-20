#finding all occurences in a linear search. This is a bit challenging question of linear searching. 
#we have been given an unsorted array in which an element is present more than two times and we have to find its index in that array. 
array = [12,24,23,54,67,78,12,45,67,98,34,22,12,675,343,55,33,12]
#finding out how many times the element appears in the array and at what index. 
def linear_searching(arr, target)
  indices = [] #we create this empty array to store all the times the element would appear in the searching throughout the array.
   arr.each_with_index do |element , index |
    indices << index if element == target 
   end 
   indices.empty? ? -1 : indices 
  end 
  target = 12
  puts linear_searching(array , target).inspect