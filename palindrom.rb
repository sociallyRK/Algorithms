# Palindromic Sequences: not all words are palindromes,
# but some substrings in a word are palindromes.
# At worst, a single character might be a considered palindromic substring.
# Write a function to find the length of the longest palindromic substring sequence
# in a word.


def PalindromeSeq (str, index=0)
  str == str.reverse || str.length < 2 ? str.length : PalindromeSeq(str[(index+1)...str.length]) > PalindromeSeq(str[(index)...(str.length-1)]) ? PalindromeSeq(str[(index+1)...str.length]) : PalindromeSeq(str[(index)...(str.length-1)])
end

puts PalindromeSeq ("hello")
puts PalindromeSeq ("bob")
puts PalindromeSeq ("fuckyou")
puts PalindromeSeq ("imma")
puts PalindromeSeq ("annammmmmmaddera")