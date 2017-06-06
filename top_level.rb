@@v = 1 # !> class variable access from toplevel

class Foo
  
end

class Bar < Foo
  @@v = :bar
end

class Foo
  @@v = :foo
end

class Bar
  @@v                           # => :foo
end

class Foo
  @@v                           # => :foo
end

@@v                             # => :foo # !> class variable access from toplevel

class Foo
  @@v = 2                       # => 2
end

@@v                             # => 2 # !> class variable access from toplevel

class Foo
  @@v = 1
end

@@v                             # => 1 # !> class variable access from toplevel
