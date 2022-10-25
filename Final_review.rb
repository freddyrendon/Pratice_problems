# # Write a method count_e(word) that takes in a string word
#  # and returns the number of e's in the word
#
def count_e(word)
  count = 0
    i = 0

    while i < word.length
      if word[i] == "e"
        count += 1
      end
      i += 1
    end

    return count
end

puts count_e("movie") # => 1
puts count_e("excellent") # => 3

# Write a method sum_nums(max) that takes in a number max
#  and returns the sum of all numbers from 1 up to and including max.


def sum_nums(max)
#   total = 0
#
#   (1..max).each do |num|
#     total += num
#   end
#   return total
  total = 0
    i = 1
    while i <= max
      total += i
      i += 1
    end
    return total
end

puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
puts sum_nums(5) # => 15


# Write a method factorial(num) that takes in a number num
#  and returns the product of all numbers from 1 up to and including num.

def factorial(num)
  fact = 1
  i = 1

    while i <= num
      fact *= i
      i += 1
    end
    return fact
end

puts factorial(3) # => 6, because 1 * 2 * 3 = 6
puts factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120


# Write a method reverse(word) that takes in a string word
#  and returns the word with its letters in reverse order.


def reverse(word)
  new_string = ""
    i = 0

    while i < word.length
        new_string = word[i] + new_string
      i += 1
    end
    return new_string
end

puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"


# Write a method is_palindrome(word) that takes in a string word and
# returns the true if the word is a palindrome, false otherwise. A
# palindrome is a word that is spelled the same forwards and backwards.

def is_palindrome(word)
  new_string = ""
  i = 0

  while i < word.length
    new_string = word[i] + new_string
    i += 1
  end

  return new_string == word

end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false


# Write a method doubler(numbers) that takes an array of numbers and returns a new array
# where every element of the original array is multiplied by 2.

def doubler(numbers)
  arr = []
  i = 0

  while i < numbers.length
    arr << numbers[i] * 2
    i += 1
  end

  return arr
end

print doubler([1, 2, 3, 4]) # => [2, 4, 6, 8]
puts
print doubler([7, 1, 8])    # => [14, 2, 16]

# Write a method yell(words) that takes in an array of words and returns a
# new array where every word from the original array has an exclamation point after it.

def yell(words)
  arr = []
  i = 0

  while i < words.length
    arr << words[i] + "!"
    i += 1
  end
  return arr
end

print yell(["hello", "world"]) # => ["hello!", "world!"]
puts
print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]

# Write a method element_times_index(nums) that takes in an array of numbers
# and returns a new array containing every number of the original array multiplied
# with its index.

def element_times_index(numbers)
  arr = []
    i = 0

    while i < numbers.length
      arr << numbers[i] * i
      i += 1
    end
    return arr
end

print element_times_index([4, 7, 6, 5])       # => [0, 7, 12, 15]
puts
print element_times_index([1, 1, 1, 1, 1, 1]) # => [0, 1, 2, 3, 4, 5]


# Write a method even_nums(max) that takes in a number max and
# returns an array containing all even numbers from 0 to max

def even_nums(max)
  arr = []
    i = 0

    while i <= max
      if i % 2 == 0
        arr << i
      end
      i += 1
    end
    return arr
end

print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]

# Write a method range(min, max) that takes in two numbers min and max.
# The method should return an array containing all numbers from min to max inclusive.

def range(min, max)

  (min..max).map {|num| num }
  arr = []
  i = min
    while i <= max
      arr << i
      i += 1
    end
  return arr
end

print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
puts
print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]

# Write a method odd_range(min, max) that takes in two numbers min and max.
#  The method should return an array containing all odd numbers from min to max (inclusive).

def odd_range(min, max)
  arr = []

  i = min

  while i <= max
    if i % 2 != 0
      arr << i
    end
    i += 1
  end
  return arr
end

print odd_range(11, 18) # => [11, 13, 15, 17]
puts
print odd_range(3, 7)   # => [3, 5, 7]

# Write a method reverse_range(min, max) that takes in two numbers min and max.
# The function should return an array containing all numbers from min to max in
# reverse order. The min and max should be excluded from the array

def reverse_range(min, max)
  arr = []
  i = max - 1

  while min < i
      arr << i
    i -= 1
  end
    return arr
end

print reverse_range(10, 17) # => [16, 15, 14, 13, 12, 11]
puts
print reverse_range(1, 7)   # => [6, 5, 4, 3, 2]


# Write a method first_half(array) that takes in an array and returns a new array
# containing the first half of the elements in the array. If there is an odd number
# of elements, return the first half including the middle element.

def first_half(array)
  arr = []
  i = 0

  while i < array.length / 2.0
    arr << array[i]
    i += 1
  end
  return arr
end

print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"])          # => ["a", "b", "c"]


# Write a method factors_of(num) that takes in a num and returns an array of all
# positive numbers less than or equal to num that can divide num.

def factors_of(num)
  arr = []
  i = 1

  while i <= num
    if num % i == 0
      arr << i
    end
    i += 1
  end
  return arr
end

print factors_of(3)   # => [1, 3]
puts
print factors_of(4)   # => [1, 2, 4]
puts
print factors_of(8)   # => [1, 2, 4, 8]
puts
print factors_of(9)   # => [1, 3, 9]
puts
print factors_of(16)  # => [1, 2, 4, 8, 16]

# Write a method select_odds(numbers) that takes in an array of
# numbers and returns a new array containing the odd numbers of the original array.

def select_odds(numbers)
  arr = []
    i = 0

    while i < numbers.length
      if numbers[i] % 2 != 0
        arr << numbers[i]
      end
      i += 1
    end
    return arr
end

print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
puts
print select_odds([2, 4, 6])            # => []

# Write a method select_long_words(words) that takes in an array of words and
# returns a new array containing all of the words of the original array that
# are longer than 4 characters.


def select_long_words(words)
  arr = []
    i = 0

    while i < words.length
      if words[i].length > 4
        arr << words[i]
      end
      i += 1
    end
    return arr
end

print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])                               # => ["coding"]


# Write a method sum_elements(arr1, arr2) that takes in two arrays.
# The method should return a new array containing the results of adding
# together corresponding elements of the original arrays. You can assume
# the arrays have the same length.

def sum_elements(arr1, arr2)
  arr = []
  i = 0

  while i < arr2.length
    arr << arr1[i] + arr2[i]
    i += 1
  end
  return arr
end

print sum_elements([7, 4, 4], [3, 2, 11]) # => [10, 6, 15]
puts
print sum_elements(["cat", "pizza", "boot"], ["dog", "pie", "camp"]) # => ["catdog", "pizzapie", "bootcamp"]




# Write a method fizz_buzz(max) that takes in a number max and returns an array containing
# all numbers greater than 0 and less than max that are divisible by either 4 or 6, but not both.

def fizz_buzz(max)
  arr = []
  i = 1

  while i < max
    if (i % 4 == 0 || i % 6 == 0) && !(i % 4 == 0 && i % 6 == 0)
      arr << i
    end
    i += 1
  end
  return arr
end

print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]


def average_array(arr)
  average = 0.0
  i = 0

  while i < arr.length
    average += arr[i]
    i += 1
  end
  return average / arr.length
end

p average_array([3, 2, 10])
p average_array([4, 3, 3, 14])
p average_array([ 5, 10])


def divisible_count(arr, factor)
  count = 0
  i = 0

  while i < arr.length
    if arr[i] % factor == 0
      count += 1
    end
    i += 1
  end
  return count
end

p divisible_count([10, 6, 30, 17], 5)
p divisible_count([24, 2, 6, 12], 3)

def hash_string(string)
  vowels = "aeiou"
  hash = Hash.new(0)

    string.each_char do |letter|
      if !vowels.include?(letter)
          hash[letter] += 1
        end
    end

    hash.delete(" ")
    return hash

end

p hash_string("cat are fun")


def symmetric_pairs(arr)

  arr.each_with_index do |num1 , index1|
    arr.each_with_index do |num2, index2|
      if index2 > index1
        return [num1,num2]
      end
    end
  end


end

arr = [[1, 2], [2, 3], [2, 1], [3, 3], [4, 7], [7, 4], [3, 2], [2, 1]]
p symmetric_pairs(arr) # [[1, 2], [2, 3], [4, 7]]



def reverse_str(str)
  string = ""
    str.each_char { |letter| string = letter + string }
    return string
end

p reverse_str("Hello")


def fizz_buzz(max)
arr = []

(1...max).each do |num|
  if (num % 3 == 0 || num % 5 == 0) && !(num % 3 == 0 && num % 5 == 0)
    arr << num
  end
end
  return arr
end

p fizz_buzz(20)


# Write a method to_initials that takes in a person's
# name string and returns a string representing their initials.

def to_initials(name)
  words = name.split(" ")

    return words.map {|word| word[0]}.join("")

end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"


# Write a method first_in_array that takes in an array
# and two elements, the method should return the element
# that appears earlier in the array.

def first_in_array(arr, el1, el2)
  if arr.index(el2) > arr.index(el1)
    return el1
  else
    return el2
  end

end

puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"



def valid_walk(string)

  hash = Hash.new(0)

  string.each_char do |letter|
    hash[letter] += 1
  end

  hash["n"] == hash["s"] && hash["e"] == hash["w"]

end

p valid_walk("nnnn") # false
p valid_walk("nenessww") # true


def missing_numbers(arr)
  new_arr = []
  min = arr[0]
  max = arr[-1]

  (min..max).each do |num|
    if !arr.include?(num)
      new_arr << num
    end
  end
  return new_arr
end


p missing_numbers([1,3]) # 2
p missing_numbers([2, 3, 7]) # [4, 5, 6, ]
p missing_numbers([-5, -1, 0, 3]) # [-4, -3, -2, 1, 2]

def sequence_search(word, key)

   key = key.chars
  character = key.shift
  i = 0
  while i < word.length
    if word[i] == character
      character = key.shift
    end
    i += 1
  end
  character.nil?
end

p sequence_search("arcata", "cat") # true
p sequence_search("c1a2t3", "cat") # true
p sequence_search("cta", "cat") # false
p sequence_search("caat", "cat") # true


# Write a method abbreviate_sentence that takes in a sentence string
# and returns a new sentence where every word longer than 4 characters
# has all of it's vowels removed.

def abbreviate_sentence(sent)
  words = sent.split(" ")
  new_str = []
  words.each do |word|
    if word.length > 4
      new_str << helper(word)
    else
      new_str << word
    end
  end
  return new_str.join(" ")
end

def helper(word)
  vowels = "aeiou"
  str = ""
  word.each_char do |letter|
    if !vowels.include?(letter)
      str += letter
    end
  end
  return str
end
#
# puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
# puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"


# Write a method format_name that takes in a name string and returns the name properly capitalized.

# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"

def format_name(str)
  words = str.downcase.split(" ")
  new_str = []
  words.each do |word|
    new_str << word[0].upcase + word[1..-1]
  end
  new_str.join(" ")
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"


# Write a method is_valid_name that takes in a string and
# returns a boolean indicating whether or not it is a valid name.


# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces
# - each part of the name should be capitalized
#
# Hint: use str.upcase or str.downcase
# "a".upcase # => "A"

def is_valid_name(str)
  words = str.split(" ")
  return false if words.length < 2

  words.each do |word|
    if word[0] == word[0].upcase && word[1..-1] == word[1..-1].downcase
      return true
    end
  end
  return false
end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false


# Write a method is_valid_email that takes in a string
# and returns a boolean indicating whether or not it is a valid email address.


# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

def is_valid_email(str)
  alpabet = "abcdefghijklmnopqrstuvwxyz"
  words = str.split("@")
  return false if words.length > 2
  return false if !str.include?(".")
  return false if !str.include?("@")
  first = words[0]

    first.each_char do |word|
      if !alpabet.include?(word)
        return false
      end
    end
    return true
end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false


# Write a method reverse_words that takes in a sentence string
# and returns the sentence with the order of the characters in
# each word reversed. Note that we need to reverse the order of
# characters in the words, do not reverse the order of words in the sentence.

def reverse_words(sent)
  words = sent.split(" ")
  arr = []
    words.each do |word|
      arr << helper(word)
    end

  return arr.join(" ")
end

def helper(word)
  str = ""
  word.each_char do |letter|
    str = letter + str
  end
    return str
end


puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'

# Write a method rotate_array that takes in an array and a number.
# The method should return the array after rotating the elements the
# specified number of times. A single rotation takes the last element of
# the array and moves it to the front.

def rotate_array(arr, num)


    num.times do |i|
      o = arr.pop
      arr.unshift(o)
  end
  return arr
end

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
# puts


# Write a method combinations that takes in an array of unique elements,
#  the method should return a 2D array representing all possible combinations
#  of 2 elements of the array.

def combinations(arr)

  new_arr = []

    arr.each_with_index do |num1, index1|
      arr.each_with_index do |num2, index2|
        if index2 > index1
          new_arr << [num1,num2]
        end
      end
    end
    return new_arr
end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
# puts

# Write a method opposite_count that takes in an array of unique numbers.
# The method should return the number of pairs of elements that sum to 0.



def opposite_count(nums)
  count = 0

  nums.each_with_index do |num1, index1|
    nums.each_with_index do |num2, index2|
        if index2 > index1 && num1 + num2 == 0
          count += 1
        end
    end
  end
  return count
end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1


def two_dimensional_sum(arr)
  total_sum = 0
  arr.each do |subarray|
    subarray.each do |num|
      total_sum += num
    end
  end

  return total_sum
end

arr = [
  [2, 6, 2],
  [6, 1]
]

p two_dimensional_sum(arr)
array_1 = [
  [4, 5],
  [1, 3, 7, 1]
]
p two_dimensional_sum(array_1)

array_2 = [
  [3, 3],
  [2],
  [2, 5]
]
p two_dimensional_sum(array_2)


def two_d_translate(arr)
  str = []

  arr.each do |subarray|
    subarray[1].times { str << subarray[0]}
  end

  return str
end

arr1= [
  ["boot", 3],
  ["camp", 2],
  ["program", 0]
]
p two_d_translate(arr1)

# Write a method array_translate that takes in an array whose
# elements alternate between words and numbers. The method should
# return a string where each word is repeated the number of times
# that immediately follows in the array.

def array_translate(array)
  str = ""
  i = 0

  while i < array.length
    str += array[i] * array[i + 1]
    i += 2
  end
  return str
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
putscd 

# Write a method pig_latin_word that takes in a word string and translates the word into pig latin.


# # Pig latin translation uses the following rules:
# # - for words that start with a vowel, add 'yay' to the end
# # - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'
#
def pig_latin_word(word)
  vowels = "aeiou"
  ele = word.split("")
  if vowels.include?(word[0])
      return word + "yay"
    end

    while !vowels.include?(ele[0])
        b = ele.shift
        ele.push(b)
      end

      return ele.join + "ay"
end

puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"
