my_var = '成功'

MyClass = Class.new do
  # これでmy_varを表示できる
  p "クラス定義の中は#{my_var}"

  define_method :my_method do
    "メソッド定義のなかも#{my_var}!"
  end
end

MyClass.new.my_method           # => "メソッド定義のなかも成功!"

def define_methods
  shared = 0

  Kernel.send :define_method, :counter do
    shared
  end

  Kernel.send :define_method, :inc do |x|
    shared += x
  end
end

define_methods                  # => :inc
counter                         # => 0
inc(4)                          # => 4
counter                         # => 4
# >> "クラス定義の中は成功"
