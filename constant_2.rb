class Foo
  Const = "foo"
  def foo
   puts Const
  end
end
Foo.new.foo

module M
  def foo
   puts Const
  end
end
class Foo
  Const = "foo"
  include M
end
Foo.new.foo                     # => 
# ~> -:3:in `foo': uninitialized constant M::Const (NameError)
# ~> 	from -:10:in `<main>'
