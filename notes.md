QUESTION 1: 

def intersection(list1, list2)
  matching_dudes = []
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
__________________________________________________________
QUESTION 2: 
def permutations?(string1, string2)
  if string1.length != string2.length
    return false
  end
  hash1 = making_string_into_hash(string1)
  hash2 = making_string_into_hash(string2)
  if hash1 == hash2
    return true
  end
  return false
end

# permutations?("hello", "ehllo") => true ["h", "e", ]
# hello - ehllo - helo heelo oohel
# h - 1,  e -1, l -2, o -1
# heelo h -1 e -2 l -1, o -1
# permutations?("pasta", "atsap") => true
# permutations?("Pizza", "Pasta") => false
# permutations?("", "") => true

# check if the two strings have the same length
# if the length is not ==, return false
# if length is equal then
# parse the two sting into key value pair
# to do the parsing, separate the sring into char
# count how many times the char exist and assign number
# initialize an empty hash, {} no keys.
# to count the char, create a loop .each_char h, e, l, l, o
# on our first loop through, h is our character. 'h' => 1
# if 'h' is not in the hash, we need to add it
# if 'h' is in the hash, then we need to +1 the value
# then compare the two hashes that are created

def making_string_into_hash(string)
  empty_hash = {}
  string.each_char do |char|
    # .each_char work for string...(to iterater over a string, .each will work on hash and array)
    if empty_hash[char] # {'l' => 1}
      empty_hash[char] += 1 # {'l' => 2}
    else
      empty_hash[char] = 1
    end
  end
  return empty_hash
end

puts(making_string_into_hash("hello"))
puts(making_string_into_hash("elloh"))
__________________________________________________________
QUESTION 3: 

require_relative "permutations.rb"

def palindrome_permutation?(string)
  hash = making_string_into_hash(string)
  number_of_time_count_is_odd = 0
  hash.each do |letter, count|
    number_of_time_count_is_odd += 1 if count.odd?
    # number_of_time_count_is_odd += 1 if count % 2 == 1 (another method to use instead)
  end
  return number_of_time_count_is_odd <= 1
end

# create a var of hash and set it == the helper method from permutations.rb making_string_into_hash(string)
  # (since you want to change the string into hash with key: value, ie, letter: count)
# create (number_of_time_count_is_odd) var and set it == to 0
# use .each method on the hash to get the number of count number
# use if statment to see if the number count is odd or even number
  # looking at the test, a word to be a palindrom needs:
  # either be an even number || odd with just one nubmer example "racecar"
# if the stored count amount == even number or has one odd number
# return true to palindrome
# return true to empty string
# return false for anything else
