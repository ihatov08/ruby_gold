class MyClass
  def my_method
    'my_method()'
  end
end

class MySubClass < MyClass
end

obj = MySubClass.new
obj.my_method()                 # => "my_method()"

MySubClass.ancestors            # => [MySubClass, MyClass, Object, Kernel, BasicObject]
