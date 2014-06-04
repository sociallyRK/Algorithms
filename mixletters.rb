def mixletters(paragraph)
	array1 = paragraph.split(" ")
  array1.each_with_index do |word, index|  
    word.length > 1 : array1[index] = word[0] + word[1...-1].split("").shuffle.join + word[word.length-1] : word
  end
  return array1.join(" ")
end

puts mixletters("Hello how are you I today fine")
#handle 1 letter and 2 letter words
#a.shuffle(random: Random.new(1))  #=> [1, 3, 2]