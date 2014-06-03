def is_palindrome(str)
  is_pal = true
  i = 0
   while i <= (str.length-1)/2 
   if str[i] != str[str.length-1-i]
   return false
   end
     i += 1
   end
  return is_pal
end 

def palsum(num)
  new_num = num + num.to_s.reverse.to_i
  if is_palindrome(new_num.to_s) == true
    return new_num
  else
    palsum(new_num)
  end
end

def palsum2(number, i=0)
  unless number.to_s == number.to_s.reverse
    palsum2(number + number.to_s.reverse.to_i, i)
    i += 1
  end
puts number
puts i
end

palsum2(195)

puts palsum(1001)
puts palsum(786)
puts palsum(1473)
puts palsum(195)


