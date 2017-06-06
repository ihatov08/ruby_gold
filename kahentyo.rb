def foo(*args)
  p args
end

def bar(*args)
  foo(args)
end

def hoge(*args)
  foo(*args)
end

bar(1, 2, 3, 4, 5) # => [[1, 2, 3, 4, 5]]

hoge(1, 2, 3, 4, 5) # => [1, 2, 3, 4, 5]

foo, bar = [1, 2] # foo = 1; bar = 2

foo, bar = 1, 2 # foo = 1; bar = 2

foo, bar = 1 # foo = 1; bar = nil

foo, bar, baz = 1, 2 # foo = 1; bar = 2; baz = nil # !> assigned but unused variable - baz

foo, bar = 1, 2, 3 # foo = 1; bar = 2

foo = 1, 2, 3 # foo = [1, 2, 3]

*foo = 1, 2, 3 # foo = [1, 2, 3]

foo,*bar = 1, 2, 3 # foo = 1; bar = [2, 3]
# >> [[1, 2, 3, 4, 5]]
# >> [1, 2, 3, 4, 5]

sum = 0;10
