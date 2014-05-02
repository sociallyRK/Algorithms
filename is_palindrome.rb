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

# def is_palindrome(str)
# 	return false if str[0] == str[-1]
# 		is_palindrome(new_str[1..-2]) 
# 	end
# 	return true
# end	

puts is_palindrome("1dod1")
puts is_palindrome("dod")
puts is_palindrome("racecar")
puts is_palindrome("toot")
puts is_palindrome("poor")

# >> def countdown(n)
# ..   return if n.zero? # base case
# ..   puts n
# ..   countdown(n-1)    # getting closer to base case 
# .. end #=> nil # terminates the method
# >> countdown(5) #=> nil
