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

# created a helper method
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
