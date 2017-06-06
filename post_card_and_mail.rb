module Mail

  def write(params)
    @write = params 
  end

  def send
    @send = Time.now
    @date = "#{@send.strftime('%a')} #{@send.strftime('h')} #{@send.strftime('%W')} #{@send.strftime('%T')} #{@send.strftime('%Y')}"
    p @date + " Sending a Postcard to Friend"
  end

  def to_s
    "Postcard of #{@date}\nDear#{@recipient}\n#{@write}\nSincerely,\n#{@sender}"
  end
end

class Postcard
  include Mail
  def initialize(sender, recipient)
    @sender, @recipient = sender, recipient
  end
end


card = Postcard.new('Me', 'Friend')
card.write('Did you forget my birthday?')
card.send

puts '-' * 60
sleep(2)
puts card
# >> "Sat h 21 20:32:32 2017 Sending a Postcard to Friend"
# >> ------------------------------------------------------------
# >> Postcard of Sat h 21 20:32:32 2017
# >> DearFriend
# >> Did you forget my birthday?
# >> Sincerely,
# >> Me
