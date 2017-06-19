class Foo
  def self.foo
    p 'foo'
  end

  def Foo.hoge
    p 'hoge'
  end

  class << self
    def bar
      p 'bar'
    end
  end
end

Foo.foo# => "foo"
Foo.hoge                        # => "hoge"
Foo.bar                         # => "bar"
#
class Foo
  def foo
    self
  end
end

class Bar < Foo
  def bar
    foo
  end
end

Bar.new.bar.class               # => Bar
# >> "foo"
# >> "hoge"
# >> "bar"
