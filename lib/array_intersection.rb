def intersection(list1, list2)
  matching_dudes = []

  list1.each do |item1| # outer loop - 1st time - item1 = 2, 2nd time - 4
    list2.each do |item2| # inner loop - 1st time - item2 - 2, 2ndtime - item2 =3, 3rd time - item2 = 5, 4thtime, item2 - 7
      # 2nd time we run outer loop, comparing 4 to all these guys over again - # inner loop - 1st time - item2 - 2, 2ndtime - item2 =3, 3rd time - item2 = 5, 4thtime, item2 - 7
      if item1 == item2 # these are both integers - they are elements inside the array
        matching_dudes << item1 # this can be item1 or item2, doesn't matter since they're the same!
      end
    end
  end
  return matching_dudes
end

list1 = [2, 4, 6, 8]
list2 = [2, 3, 5, 7]
puts intersection(list2, list1)

# this is for 1 number, 1 array
# initialize empty array
# iterate over array
# if number == item in array
# put item in new array
# return new array

# this is for 2 arrays
# initialize empty array (to put the dudes that match into)
# iterate over first array
# inside that loop, iterate over 2nd array
# if item in 1st array == item in 2nd array
# put item in new array (the one w/ matching dudes)
# return new array!
