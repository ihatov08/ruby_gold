class Foo
  def hoge
    p 'hoge'
  end
end

# Barクラスのhogeメソッドはundefされる
# undefするとスーパークラスに同名のメソッドがあってもno methodエラーを発生させる
# しかし、superの呼び出しには影響しない
class Bar < Foo
  def hoge
    p super + 'bar'
  end
  alias bar hoge
  undef hoge
end

Bar.new.bar                     # => "hogebar"

module Mod
  def foo
    p 'mod'
  end
end

class Cls1
  def foo
    'cls1'
  end
end
# undef のより正確な動作は、メソッド名とメソッド定義との関係を取り除き、 そのメソッド名を特殊な定義と関連づけます。
# この状態のメソッドの呼び出しは 例えスーパークラスに同名のメソッドがあっても例外 NameError を発生させます。
class Cls2 < Cls1
  include Mod
  def foo
    'cls2 foo'
  end
  undef foo
end
Cls2.new.foo                    # => 
# ~> -:16:in `<main>': undefined method `hoge' for #<Bar:0x007f9317846d20> (NoMethodError)
# >> "hoge"
# >> "hogebar"
