v1 = 1 
class MyClass # スコープゲート: classの入口
  v2 = 2
  local_variables               # => [:v2, :_xmp_1497065613_37095_295127]
  def my_method # スコープゲート: defの入口
    v3 = 3 # 
    local_variables
  end # スコープゲート defの出口
  local_variables
end # スコープゲート classの出口

obj = MyClass.new
obj.my_method                   # => [:v3]
local_variables                 # => [:v1, :obj, :_xmp_1497065613_37095_295127]
