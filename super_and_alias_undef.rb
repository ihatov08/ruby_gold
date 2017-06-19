class Foo
  def foo
    'foo'
  end
end

class Bar < Foo
  def foo
    super + 'bar'
  end
  alias bar foo
  # undef fooしてもスーパークラスのメソッドには影響なし
  undef foo
end

Bar.new.bar                     # => "foobar"

class Piyo
  def piyo
    'piyo'
  end
end

class Hoge < Piyo
  # メソッド定義してからじゃないと、aliasはできない
  alias hoge piyo
  def piyo
    super + 'hoge'
  end
  undef piyo
end

Hoge.new.piyo                   # => 

# ~> -:32:in `<main>': undefined method `piyo' for #<Hoge:0x007f991604c750> (NoMethodError)
