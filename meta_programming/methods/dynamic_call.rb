class MyClass
  def my_method(my_arg)
    my_arg * 2
  end
end

obj = MyClass.new
obj.my_method(3)                # => 6

obj.send(:my_method, 3)         # => 6

:x.class                        # => Symbol
'x'.class                       # => String

1.send('+', 2)                  # => 3
1.send(:+, 2)                   # => 3


