def cake_seeker(people)
  people < 3 ? (people == 1 ? 1 : 2) : ((people % 4 == 3) ? 1 : ((people % 4) * 2 + 2))
end
#  h = {0=>2, 1=>4, 2=>6, 3=>1}

puts cake_seeker(1)
puts cake_seeker(2)
puts cake_seeker(3)
puts cake_seeker(4)
puts cake_seeker(5)
puts cake_seeker(6)
puts cake_seeker(7)
puts cake_seeker(8)
puts cake_seeker(9)
puts cake_seeker(10)
puts cake_seeker(11)



# 1: 1 A -
# 2: 2 B A
# 3: 1 A CB
# 4: 2 B CAD
# 5: 4 D CEBA
# 6: 6 F CEADB
# 7: 1 A CEGBFD
# 8: 2 B CEGADHF
# 9: 4 D CEGIBFAH
# 10: 6 F CEGIADHFB
# 11: 1 A CEGIKBFJDH
# 12: 2 B CEGIKADHLFJ
# 13: 4 D


