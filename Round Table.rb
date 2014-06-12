def cake_seeker(people, starting_person)

  count = 0
  people.each do |person|
    if person == "X"
      count += 1
    else
      cake_winner = person
    end
  end
  if count == people.length - 1
    people[cake_winner]
  else
    people[starting_person + 2] = "X"
    if starting_person == people.length - 1 
      starting_person = 1
    elsif starting_person == people.length - 2
      starting_person = 0
    else
      starting_person += 2
    end
    cake_seeker(people, starting_person)
  end

end

people = ["Bob", "Joe", "George", "Lisa", "Henry"]

cake_seeker(people, 0)
