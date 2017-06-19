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
  undef_method :foo
end

Foo.new.foo                     # => "foo"
Bar.new.foo                     # => 
# ~> -:17:in `<main>': undefined method `foo' for #<Bar:0x007fff4404dc10> (NoMethodError)
# >> "foo"
