def foo(*args)
  args
end

def bar(*args)
  foo(args)
end

def hoge(*args)
  foo(*args)
end

bar(1, 2, 3, 4, 5)              # => [[1, 2, 3, 4, 5]]

hoge(1, 2, 3, 4, 5)             # => [1, 2, 3, 4, 5]

foo, bar = [1, 2]               # => [1, 2]

foo, bar = 1, 2                 # => [1, 2]

foo, bar = 1                    # => 1

foo, bar, baz = 1, 2            # => [1, 2]

foo                             # => 1

bar                             # => 2

baz                             # => nil

foo, bar = 1, 2, 3              # => [1, 2, 3]

foo = 1, 2, 3                   # => [1, 2, 3]

*foo = 1, 2, 3                  # => [1, 2, 3]

foo,*bar = 1, 2, 3              # => [1, 2, 3]
