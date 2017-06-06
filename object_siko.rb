class Foo
  def initialize(a)
    @a = a
  end

  def method1
    @a
  end
end

foo1 = Foo.new(1)
foo2 = Foo.new(2)

foo1.method1                    # => 1
foo2.method1                    # => 2


a = Foo
a.new(1)

module M
  def method_missing(id, *args)
    p "M#method_missing()"
  end
end

class A
  include M
  def method_missing(id, *args)
    p "A#method_missing()"
  end
end

class B < A
  def method_x
    p "#{self.class.name}:method_x"
  end
  class << self
    def method_missing(id, *args)
      p "B`method_missing()"
    end
  end
end

obj = B.new                     # => #<B:0x007fd4c21504c0>
obj.method_x                    # => "B:method_x"
obj.method_y                    # => "A#method_missing()"


# クラスメソッドはクラスしか呼び出さない
class C
  def self.m
    p '2'
  end
end

C.m                             # => "2"


# モジュールをクラスにextendすれば、モジュールのインスタンスメソッドが
# クラスメソッドになる

module FooFoo
  def foo
    p 'foo'
  end
end

class Hoge
  extend FooFoo
end

Hoge.foo                        # => "foo"

# initializeを定義しない場合は親クラスのinitializeが自動で呼ばれる

class M1
  def initialize
    p 'm1'
  end
end

class M2 < M1
end

M2.new                          # => #<M2:0x007fd4c2141e98>

# superとsuper()は動作が異なる
# superは現在のメソッドがオーバーライドしているメソッドを呼び出す
# 括弧と引数が省略された場合には、現在のメソッドの引数がそのまま渡される
# 引数を渡さずにオーバーライドしたメソッドを呼び出すには、super()と括弧を明示的に渡す

class Hoge
  def hoge(arg=nil)
    p arg
  end
end

class Fuga < Hoge
  def hoge(arg)
    # 引数に5を渡して実行
    p super(5)                    # => 5
    # 呼び出し時の引数の値で実行
    p super(arg)                  # => 10
    # 呼び出し時の引数の値で実行
    p super                       # => 10
    arg = 1
    # 引数 arg = 1で実行
    p super                       # => 1
    # 引数に何も渡さずに実行
    p super()                     # => nil
  end
end

Fuga.new.hoge 10

class Sample
  # クラス定義の中で初期化した@valueは、Sampleクラスオブジェクトのインスタンス変数
  @value = 'hello'

  def value
    # メソッド定義の中で初期化した@valueはSampleクラスオブジェクトの
    # インスタンスのインスタンス変数になる
    @value # !> instance variable @value not initialized
  end
end

Sample.new.value                # => nil
Sample.class_eval { @value }    # => "hello"
# >> "B:method_x"
# >> "A#method_missing()"
# >> "2"
# >> "foo"
# >> "m1"
# >> 5
# >> 5
# >> 10
# >> 10
# >> 10
# >> 10
# >> 1
# >> 1
# >> nil
# >> nil
