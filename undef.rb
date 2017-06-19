class Foo
  def hoge
    'hoge'
  end
end

class Bar < Foo
  def hoge
    super + 'bar'
  end
  alias bar hoge
  undef hoge
end

Bar.new.bar                     # => "hogebar"

class Cup
  def pee
    'pee'
  end
end

class Glass < Cup
  def poyo
  end
  undef pee
end

Cup.new.pee                     # => "pee"
Glass.new.pee                   # => 
# ~> -:30:in `<main>': undefined method `pee' for #<Glass:0x007fe23c047038> (NoMethodError)
