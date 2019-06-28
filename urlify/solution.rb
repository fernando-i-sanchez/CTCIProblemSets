# URLify: Write a method to replace all spaces in a string with '%20'. You may
# assume that the string
# has sufficient space at the end to hold the additional characters, and that
# you are given the "true"
# length of the string. (Note: if implementing in Java, please use a character
# array so that you can
# perform this operation in place.)
# EXAMPLE
# Input: "Mr John Smith ", 13
# Output: "Mr%20John%20Smith"

def solution(string)
  string.strip!
  encodeToURI(string)
end

def encodeToURI(string)
  string.gsub(' ', '%20')
end

# tests
puts(encodeToURI('Mr John Smith')) 
puts(solution('Mr John Smith') == 'Mr%20John%20Smith')
