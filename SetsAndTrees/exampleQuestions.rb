# 1. Sets
# ● Concept:
# ○ ASet isanunordered collection of unique elements.
# ○ Itensures that no duplicate values exist within the collection.
# ○ Setsare optimized for fast membership checks (checking if an element exists in the
# set).
# ● RubyImplementation:
# ○ InRuby, Sets are represented by the Set class.
# ○ Youcancreate a set using the Set.new method.
# my_set = Set.new([1, 2, 3, 3, 4])
# # my_set will contain [1, 2, 3, 4]
# ● KeyMethods:
# ○ add(element): Adds an element to the set.
# ○ delete(element): Removes an element from the set.
# ○ include?(element): Checks if an element exists in the set.
# ○ union(other_set): Returns a new set containing all elements from both sets.
# ○ intersection(other_set): Returns a new set containing only the elements common to
# both sets.
# ○ difference(other_set): Returns a new set containing elements in the first set but not
# in the second 
set1 = Set.new([1, 2, 3])
 set2 = Set.new([3, 4, 5])
 puts set1.union(set2) 
 puts set1.intersection(set2) 
 puts set1.difference(set2) 
