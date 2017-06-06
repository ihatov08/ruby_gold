# ParentClass > M > ChildClass
# includeを使うとinclude呼び出しクラスの1つ上に
# superclassが作られる
module M
  def method1
    p 'module M'
    super
  end
end

class ParentClass
  def method1
    p 'class ParentClass'
  end
end

class ChildClass < ParentClass
  include M
  def method1
    p 'class Childclass'
    super
  end
end

ChildClass.new.method1          # => "class ParentClass"
# >> "class Childclass"
# >> "module M"
# >> "class ParentClass"
