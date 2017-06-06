class Foo
  def foo(arg=nil)
    p arg
  end
end

class Bar < Foo
  def foo(arg)
    # 5を引数にして呼び出す
    super(5)                    # => 5
    # 5を引数にして呼び出す
    super(arg)                  # => 5
    # 5を引数にして呼び出す super(arg)の略記法
    super                       # => 5
    arg = 1
    # 1を引数にして呼び出す super(arg)の略記法
    super                       # => 1
    # 引数なしで呼び出す
    super()                     # => nil
  end
end

Bar.new.foo 5                   # => nil

class Sample
  @value = 'hello'
  def value
    @value # !> instance variable @value not initialized
  end
end

Sample.new.value                # => nil
Sample.class_eval { @value }    # => "hello"
#
class Foo
  @v1 = 1

  def self.read
    @v1
  end

  def write
    @v1 = 2
  end

  def read
    @v1
  end
end

obj = Foo.new
obj.write                       # => 2
obj.read                        # => 2
Foo.read                        # => 1
#
foo = Foo.new
foo.class                       # => Foo
# foo.superclass                  # => 
@@v1 = 1 # !> class variable access from toplevel
class Foo
  @@v1 = 2
end
p @@v1 # 2 # !> class variable access from toplevel
# クラス変数は親と子、共有で使う

# http://ref.xaio.jp/ruby/classes/object/extend
module M
  def m
    'aa'
  end
end

obj = Object.new
obj.extend M
obj.m                           # => "aa"

class C
  extend M
end

C.m                             # => "aa"

#c.new.m                         # =>

# includeの位置を変えると表示される結果が異なる
module M
  @@x = 100
end

class A
  @@x = 500
  include M
end

module M
  p @@x                         # => 100
end

class A
  p @@x                         # => 100 # !> class variable @@x of A is overtaken by M
end


module M2
  @@x = 100                     # => 100
end

class A
  include M
  @@x = 500
end

module M
  p @@x                         # => 500
end

class A
  p @@x                         # => 500
end

# moduleで定義されたクラス変数(モジュール変数)は、そのmoduleをincludeしたclass間でも共有される
#
module FooModule
  @@foo = 1
end

class Bar
  include FooModule
  @@foo += 1                    # => 2
end

class Baz
  include FooModule
  @@foo += 1                    # => 3
end


# 親クラスに、子クラスで既に定義されている同名のクラス変数を追加した場合は、
# 子クラスのクラス変数は子クラスで保存される
#
class FooBar
end

class BarFooBar < FooBar
  @@v = :bar
end

class FooBar
  @@v = :foobar
end

class BarFooBar
  @@v                           # => :foobar # !> class variable @@v of BarFooBar is overtaken by FooBar
end

class FooBar
  @@v                           # => :foobar
end
# module AB
#   p @@x                         # => 
# end


# >> 5
# >> 5
# >> 5
# >> 1
# >> nil
# >> 2
# >> 100
# >> 100
# >> 500
# >> 500
