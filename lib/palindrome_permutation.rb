require_relative "permutations.rb"
# Added a new test:)
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
