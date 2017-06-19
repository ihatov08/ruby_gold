module Mod
  module_function
  def func
    p 'hello module'
  end
end

Mod.func                        # => "hello module"

def hoge(*arg)
  p arg
end

hoge(1,2,3)                     # => [1, 2, 3]
hoge([1,2,3])                   # => [[1, 2, 3]]
def fuga(*arg)
  p *arg
end

fuga(1,2,3)                     # => [1, 2, 3] # !> `*' interpreted as argument prefix
fuga([1,2,3])                   # => [1, 2, 3]
# >> "hello module"
# >> [1, 2, 3]
# >> [[1, 2, 3]]
# >> 1
# >> 2
# >> 3
# >> [1, 2, 3]
