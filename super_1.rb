class Foo
  def foo
    p 'foo'
  end
end

class Bar < Foo
  def foo(a, b)
    p super
    p "#{a} + #{b}"
  end
end

Bar.new.foo(5, 6)               # => 
# ~> -:2:in `foo': wrong number of arguments (given 2, expected 0) (ArgumentError)
# ~> 	from -:9:in `foo'
# ~> 	from -:14:in `<main>'
