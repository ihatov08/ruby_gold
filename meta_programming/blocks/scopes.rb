v1 = 1 # !> assigned but unused variable - v1
class MyClass
  v2 = 2 # !> assigned but unused variable - v2
  local_variables               # => [:v2, :_xmp_1495963663_66526_928501]
  def my_method
    v3 = 3 # !> assigned but unused variable - v3
    local_variables             # => [:v3, :_xmp_1495963663_66526_928501], [:v3, :_xmp_1495963663_66526_928501]
  end
  local_variables               # => [:v2, :_xmp_1495963663_66526_928501]
end

obj = MyClass.new
obj.my_method                   # => [:v3, :_xmp_1495963663_66526_928501]
obj.my_method                   # => [:v3, :_xmp_1495963663_66526_928501]
local_variables                 # => [:v1, :obj, :_xmp_1495963663_66526_928501]
