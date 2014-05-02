def index_closer(str)
  paren = 0
  brack = 0
  curl_brack = 0

  if str.rindex(")") != nil
    paren = str.rindex(")")
  end
  if str.rindex("]") != nil
    brack = str.rindex("]")
  end
  if str.rindex("}") != nil
    curl_brack= str.rindex("}")
  end
  # puts paren
  # puts brack
  # puts curl_brack
  return [paren, brack, curl_brack].max
end

def validate_order(string_orig)
  new_string = string_orig
  puts new_string
  openers_hash= { ")" => "(", "]" => "[", "}" => "{" }

  if new_string.length == 0
    return true
  end
  opening_index = new_string.index(openers_hash[new_string[index_closer(new_string)]])
  closing_index = index_closer(new_string)
   puts opening_index
   puts closing_index
  if new_string.length % 2 == 1
    return false
  elsif opening_index == nil
    return false
  elsif opening_index > closing_index
    return false
  else
    new_string.delete!(new_string[opening_index])
    new_string.delete!(new_string[closing_index-1])
    return validate_order(new_string)
  end
  puts "missing a case"
end


string1 = "[{()}]" #should == true
string2 = "[{}()}]{}" #should == false
string3 = "([]){}" #should == true
string4 = "(([]){}())" #should == true

puts validate_order(string4)


# def validate(stringorig)
#   openers_hash= { "(" => ")", "[" => "]", "{" => "}" }
#   string1 = stringorig
#   puts string1
# 	opening_value = string1[0]
#   closing_value = openers_hash[opening_value]
#   reverse_string = string1.reverse
#   closing_index = string1.length - 1 - reverse_string.index(closing_value) 
#   while string1.length > 0 do
# 	   if !string1[1..string1.length].include?(openers_hash[opening_value])
# 		  return false
#       else
#      if string1.length > 0 && (string1.length != closing_index)
# 	     return validate(string1[1..closing_index-1]) &&  validate(string1[closing_index+1..string1.length])
#      elsif string1.length > 0 && (string1.length == closing_index)
#         return 
#         validate(string1[1..closing_index-1])
#      else
#       return true
#      end
#     end
#   end
# end





#puts validate(string1)
#puts validate(string3)
