class Foo
  CONST = 'foo'
  def foo
    p CONST
  end
end

Foo.new.foo                     # => "foo"

module M
  def foo
    p CONST
  end
end

class Hoge
  CONST = 'foo'
  include M
end
# module MのCONSTを見に行ってしまう
Hoge.new.foo                     # => 
# ~> -:11:in `foo': uninitialized constant M::CONST (NameError)
# ~> 	from -:20:in `<main>'
# >> "foo"
# エラーが起きないようにするには、以下のようにする必要がある

module M
  def foo
    p Hoge::CONST
  end
end
