# Is Unique: Implement an algorithm to determine if a string has all unique
# characters. What if you
# cannot use additional data structures?

# Questions to ask
# Is the string ACII or UNICODE?
# ACII uses 7 bits per character due to parity bit
# UNICODE or ACII Extended uses 8
# We will assume ASCII( 2^7 ) == 128 possible characters
#

# Test cases

def solution(string)
  return false if string.count > 128
  char_hash = {}
  string.split('').each do |char|
    # If found again it is no longer unique
    return false if char_hash[char]
    char_hash[char] = true
  end
  true
end

# Complexity
#
# Time complexity would be O(n) where n is the size of the string
# because it has to look at every character in the string

# If we can't use additional datastructures we could compare each character to
# everyother character resulting in O(n^2) time complexity
