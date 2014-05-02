def validate(stringorig)
  openers_hash= { "(" => ")", "[" => "]", "{" => "}" }
  string1 = stringorig
  puts string1
	opening_value = string1[0]
  closing_value = openers_hash[opening_value]
  reverse_string = string1.reverse
  closing_index = string1.length - 1 - reverse_string.index(closing_value) 
  while string1.length > 0 do
	   if !string1[1..string1.length].include?(openers_hash[opening_value])
		  return false
      else
     string1.delete!(opening_value)
     string1.delete!(closing_value)
     if string1.length > 0 
        puts string1.length
	     return validate(string1[0..string1.length])
     else
      return true
     end
    end
  end
end




string1 = "[{()}]" #should == true
string2 = "[{}()}]}" #should == false
string3 = "([])" #should == true

puts validate(string1)
puts validate(string2)
puts validate(string3)
