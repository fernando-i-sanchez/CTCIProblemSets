# Check Permutation: Given two strings, write a method to decide if one is a
# permutation of the other
#
# Questions to ask
# What is a permutation?
#   A combination of a set in which the order matters
# Is whitespace relevent?
# Is this case sensative?
# We are going to assume that whitespace is relevent and case sensative
#
# Test cases
# ('dog', 'god') == true
# ('dog     ','god') == false
# ('geeksforgeeks',''forgeeksgeeks') == true
# ('accd', 'ccad') == true

def solution(str1, str2)
  return false if str1.length != str2.length
  str1.split('').each do |char|
    str2.slice!(char)
  end

  return true if str2.empty?
  false
end

puts(solution('dog', 'god'))
puts(solution('dog    ', 'god'))
puts(solution('accd', 'ccad'))
puts(solution('geeksforgeeks', 'forgeeksgeeks'))
