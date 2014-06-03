def repeat(string)
  if string.length < 2
    return string
  end
  count=1
  while string[0] == string[count] && (count < string.length)
    count+=1
  end
  if count == 1
    return string[0] + repeat(string[count...string.length])
  else
    return count.to_s + string[0] + repeat(string[count...string.length])
  end
end

puts repeat("AAAAAABBBCDD")
#becomes 4A3BCD
