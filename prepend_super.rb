class A
  def foo
    p "クラスA#foo"
  end
end

module M
  def foo
    super
    p "モジュールM#foo"
  end
end

class A
  prepend M
end

p A.ancestors                  
A.new.foo                      
# >> [M, A, Object, Kernel, BasicObject]
# >> "クラスA#foo"
# >> "モジュールM#foo"
