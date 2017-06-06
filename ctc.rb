class Foo
  def bar(obj=nil) # !> previous definition of bar was here
    foo
  end

  private

  def foo # !> previous definition of foo was here
    p 'foo'
  end
end

# M + ;で # => が入力される  
Foo.new.bar(Foo.new)            # => "foo"


class Foo
  def foo # !> method redefined; discarding old foo
    self.bar
  end

  def bar # !> method redefined; discarding old bar
    p 'bar'
  end
end

Foo.new.bar                     # => "bar"

class Hello
  def greet
    'Hello '
  end
end

class World < Hello
  def greet
    super + "world"
  end
end

p World.new.greet            # => "Hello world"

a, *b = *[1, 2, 3]

p a                             # => 1
p b                             # => [2, 3]

module M
  CONST = 'HELLO'
end
p ::M::CONST                    # => "HELLO"

class Error1 < StandardError
end

class Error2 < Error1
  begin
    raise Error2
  rescue Error1 => ex
    p ex.class                  # => Error2
  end
end
# >> "foo"
# >> "bar"
# >> "Hello world"
# >> 1
# >> [2, 3]
# >> "HELLO"
# >> Error2
