class Super
  def greet
    'hello'
  end
end

class Sub < Super
  def greet
    super + 'world.'
  end
end

p Sub.new.greet                 # => 

module M
  def foo
    self.class
  end
end

class C
  include M
end

p C.new.foo                     # => 

p '2'                           # =>
# module Mod
#   def foo
#     p 'Mod'
#   end
# end

# class Cls1
#   include Mod
#   def foo
#     p 'Cls1'
#     super
#   end
# end

# class Cls2 < Cls1
#   def foo
#     p 'Cls2'
#     super
#   end
# end

# Cls2.new.foo  
# => 

class Cls1
  def Cls1.foo
    p 'Cls1'
  end
end

class Cls2 < Cls1
  def foo
    p 'Cls2'
  end
end

Cls2.foo                        # => 

module M1
end

module M2
end

class Cls1
  include M1
end

class Cls2 < Cls1
  p self.ancestors
  include M2
end

class A
  @@a = 0
  def initialize
    @@a = @@a + 1
  end

  def A.a
    @@a
  end
end
class B < A
end
A.new
A.new
B.new
B.new

p A.a          # => 
#
module Mod
  def Mod.foo
    p 'Mod'
  end
end

class Cls1
  include Mod
  def Cls1.foo
    p 'Cls1'
  end
end

class Cls2 < Cls1
  def Cls2.foo
    p 'Cls2'
  end
end
Cls2.new.foo   # => 
# ~> -:117: syntax error, unexpected end-of-input, expecting ')'
