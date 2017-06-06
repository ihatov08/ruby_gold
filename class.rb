Module.class                    # => Class
Class.class                     # => Class
Class.superclass                # => Module
Class.ancestors                 # => [Class, Module, Object, Kernel, BasicObject]
Module.superclass               # => Object
module Foo
  @@foo = 1
end

Foo.class                       # => Module
#
Foo.ancestors                   # => [Foo]
#
class FooClass
end

FooClass.class                       # => Class

FooClass.ancestors              # => [FooClass, Object, Kernel, BasicObject]
