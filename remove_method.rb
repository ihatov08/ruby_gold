class Foo
  def foo
    p 'foo'
  end
end

class Bar < Foo
  def foo
    p 'bar'
  end
end

class Bar
  remove_method :foo
end

Foo.new.foo
Bar.new.foo                     # => "foo"
class Hoge
  def hoge
    p 'hoge'
  end
end

class Piyo < Hoge
  def hoge
    p 'hoge'
  end
end

class Piyo
  undef_method :hoge           
end

Hoge.new.hoge                   # => "hoge"
Piyo.new.hoge                   # => 
# ~> -:36:in `<main>': undefined method `hoge' for #<Piyo:0x007fa105046818> (NoMethodError)
# >> "foo"
# >> "foo"
# >> "hoge"
