def foo
  p 'foo'
end

class MyClass
  foo
end

class MyClass
  foo = 'MyClass foo'
  p foo
end

class MyClass
  foo
end

class MyClass
  foo                           # => "foo"
  def bar
    self.foo
  end
  def foo
    'MyClass foo method'
  end
end
MyClass.new.bar                 # => "MyClass foo method"

class Qux4
  attr_accessor :v3
  def method1
    @v3
  end
end
qux4 = Qux4.new
qux4.v3 = 3
qux4.v3                         # => 3
qux4.method1                    # => 3
class Qux4Ext < Qux4
end

qux4Ext = Qux4Ext.new
qux4Ext.v3                      # => nil
qux4Ext.v3 = 4
qux4Ext.v3                      # => 4
# 
class Qux5
  @@v1 = 1
  def v1
    @@v1
  end

  def v1=(value)
    @@v1 = value
  end
end

class Qux5Ext < Qux5
end

qux5 = Qux5.new
qux5.v1                         # => 1
qux5Ext = Qux5Ext.new
qux5Ext.v1                      # => 1
# >> "foo"
# >> "MyClass foo"
# >> "foo"
# >> "foo"
