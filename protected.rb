# protected以降で定義されたメソッドは、そのクラスとサブクラスのインスタンスから
# 呼び出すことができる。
class Foo
  def bar(obj=nil) # !> previous definition of bar was here
    foo # ok
    self.foo # ok
    obj.foo # ok
  end

  protected
  def foo # !> previous definition of foo was here
    p 'foo'
  end
end

Foo.new.bar(Foo.new)            # => "foo"

# privateはレシーバを指定することはできない
class Foo
  def bar(obj=nil) # !> method redefined; discarding old bar
    foo # ok
    self.foo # bad
    obj.foo # bad
  end

  private
  def foo # !> method redefined; discarding old foo
    p 'foo'
  end
end

Foo.new.bar(Foo.new)            # => 
# ~> -:19:in `bar': private method `foo' called for #<Foo:0x007f8bcc04cea0> (NoMethodError)
# ~> 	from -:29:in `<main>'
# >> "foo"
# >> "foo"
# >> "foo"
# >> "foo"
