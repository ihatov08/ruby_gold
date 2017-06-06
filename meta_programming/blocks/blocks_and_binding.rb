def my_method
  x = 'Goodbye' # !> assigned but unused variable - x
  yield('cruel')
end

x = 'hello'
my_method { |y| "#{x}, #{y} world" } # => "hello, cruel world"
