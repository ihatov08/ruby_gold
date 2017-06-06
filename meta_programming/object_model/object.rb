class MyClass
  def my_method
    @v = 1
  end
end

obj = MyClass.new               # => #<MyClass:0x007fdd3182f878>
obj.class                       # => MyClass

obj.my_method
obj.instance_variables          # => [:@v]

obj.methods.grep(/my/)          # => [:my_method]
obj.methods                     # => [:my_method, :instance_of?, :public_send, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :private_methods, :kind_of?, :instance_variables, :tap, :define_singleton_method, :is_a?, :extend, :to_enum, :enum_for, :<=>, :===, :=~, :!~, :eql?, :respond_to?, :freeze, :inspect, :display, :object_id, :send, :to_s, :method, :public_method, :singleton_method, :nil?, :hash, :class, :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :trust, :untrusted?, :methods, :protected_methods, :frozen?, :public_methods, :singleton_methods, :!, :==, :!=, :__send__, :equal?, :instance_eval, :instance_exec, :__id__]
MyClass.instance_methods(false)        # => [:my_method]

String.instance_methods == 'abc'.methods # => true
String.methods == 'abc'.methods           # => false

'hello'.class                   # => String
String.class                    # => Class

Class.instance_methods(false)   # => [:new, :allocate, :superclass]

Array.superclass                # => Object
Object.superclass               # => BasicObject
BasicObject.superclass          # => nil
Class.superclass                # => Module
