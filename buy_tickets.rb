def buy_tickets(*people)
  if people.length == 3
    people.each do |person|
      puts "Buying a ticket for #{person}"
    end
  elsif people.length == 4
     puts "Buying a group ticket for #{people.join(',')}."
  end
end

buy_tickets("Sam", "Dave", "David")
buy_tickets("John", "Paul", "Ringo", "George")

# >> Buying a ticket for Sam
# >> Buying a ticket for Dave
# >> Buying a ticket for David
# >> Buying a group ticket for John,Paul,Ringo,George.
