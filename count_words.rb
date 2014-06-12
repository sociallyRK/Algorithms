
my_article = "An article (abbreviated art) is a word (or prefix or suffix) that is used with a noun to indicate the type of reference being made by the noun. Articles specify grammatical definiteness of the noun, in some languages extending to volume or numerical scope. The articles in the English language are the and a/an, and (in some contexts) some. 'An' and 'a' are modern forms of the Old English 'an', which in Anglian dialects was the number 'one' (compare 'on', in Saxon dialects) and survived into Modern Scots as the number 'ane'. Both 'on' (respelled 'one' by the Normans) and 'an' survived into Modern English, with 'one' used as the number and 'an' ('a', before nouns that begin with a consonant sound) as an indefinite article."
up_count = 0

article_hash = Hash.new(0)
my_article.scan(/\w+/) do |key|
  if article_hash[key][0] == article_hash[key][0]
    up_count += 1
  end
    article_hash[key] += 1
end 


puts article_hash