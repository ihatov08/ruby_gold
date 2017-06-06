v1 = 1 # !> assigned but unused variable - v1
class MyClass
  v2 = 2 # !> assigned but unused variable - v2
  def self.local
    local_variables
  end
  local_variables               # => [:v2, :_xmp_1495964159_68147_904989]
  def my_method
    v3 = 3 # !> assigned but unused variable - v3
    local_variables
  end
  local_variables
end

MyClass.local          # => []
obj = MyClass.new      # => #<MyClass:0x007fc60a845c88>
obj.my_method                   # => [:v3]
local_variables                 # => [:v1, :_xmp_1495964159_68147_904989, :obj]
