class Foo
  @@var = 1

  def self.class_method
    @@var
  end
  def instance_method
    @var = 1
  end
end

foo = Foo.new
foo.instance_method             # => 1
foo.instance_variables          # => [:@var]


Foo.class_variables             # => [:@@var]
Foo.instance_methods(false)     # => [:instance_method]
# classメソッドを参照するには、Fooクラスの得意メソッドを
# 参照する
Foo.singleton_methods(false)    # => [:class_method]
