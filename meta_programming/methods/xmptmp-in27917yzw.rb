class Roulette
  def method_missing(name, *args)
    persion = name.to_s.capitalize
    3.times do
      number = rand(10) + 1
      puts "#{number}..."
    end
    "#{person} got a #{number}"
  end
end

number_of = Roulette.new
puts number_of.bob              # =>