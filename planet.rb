class Planet
  def life?
    p 'Who knows?'
  end
end

pluto = Planet.new
earth = Planet.new
mars  = Planet.new

def pluto.life?
  p 'Probably not.'
end

def earth.life?
  p 'Positively!'
end

pluto.life?()  # => "Probably not."
earth.life?()  # => "Positively!"
mars.life?()   # => "Who knows?"
# >> "Probably not."
# >> "Positively!"
# >> "Who knows?"
