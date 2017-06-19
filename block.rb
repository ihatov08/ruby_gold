def my_method # !> previous definition of my_method was here
  x = 'メソッドの中' # !> assigned but unused variable - x
  yield('メソッドの中のブロック')
end

x = 'メソッドの外'

my_method { |y| "#{x} #{y} どれが出力される？" } # => "メソッドの外 メソッドの中のブロック どれが出力される？"

def just_yield
  yield
end

top_level_variable = 1

just_yield do
  top_level_variable += 1
  local_to_block = 1 # 新しい束縛 # !> assigned but unused variable - local_to_block
end

v1 = 1 # !> assigned but unused variable - v1
local_variables                 # => [:x, :_xmp_1497065128_36010_906805, :top_level_variable, :v1, :obj]

class MyClass
  v2 = 2 # !> assigned but unused variable - v2
  local_variables               # => [:v2, :_xmp_1497065128_36010_906805]
  def my_method # !> previous definition of my_method was here
    v3 = 3 # !> assigned but unused variable - v3
    local_variables             # => [:v3, :_xmp_1497065128_36010_906805], [:v3, :_xmp_1497065128_36010_906805]
  end
  local_variables               # => [:v2, :_xmp_1497065128_36010_906805]
end

obj = MyClass.new
obj.my_method                   # => [:v3, :_xmp_1497065128_36010_906805]
obj.my_method                   # => [:v3, :_xmp_1497065128_36010_906805]
local_variables                 # => [:x, :_xmp_1497065128_36010_906805, :top_level_variable, :v1, :obj]

def a_scope
  $var = 'some value'
end

def another_scope
  $var
end

a_scope                         # => "some value"
another_scope                   # => "some value"

@var = 'トップレベルの変数@var'

def my_method # !> 
  @var
end

my_method                       # => "トップレベルの変数@var"

class MyClass
  def my_method # !> 
    @var = 'トップレベルの変数@varではない'
  end
end

MyClass.new.my_method           # => "トップレベルの変数@varではない"
