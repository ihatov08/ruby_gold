class MyClass
  def testing_self
    @var = 10
    my_method
    self
  end

  def my_method
    @var = @var + 1
  end
end


obj = MyClass.new
obj.testing_self                # => #<MyClass:0x007fc80b8565a8 @var=11>

self                            # => main
