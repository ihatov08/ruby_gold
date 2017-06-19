class Foo
  def foo
    self.bar
  end

  def bar
    p 'bar'
  end
end

Foo.new.foo                     # => "bar"

a, *b = *[1,2,3]

a                               # => 1
b                               # => [2, 3]


# rescue節で補足できる例外は、指定した例外クラスと、
# そのクラスのサブクラス
#
#捕捉する例外としてError1を指定しているが、
#Error1のサブクラスとして定義されたError2の例外がraiseされているため
#Error2の例外を捕捉することができる
class Error1 < StandardError
end

class Error2 < Error1
end
begin
  raise Error2
rescue Error1 => ex
  p ex.class                    # => Error2
end
# >> "bar"
# >> Error2
