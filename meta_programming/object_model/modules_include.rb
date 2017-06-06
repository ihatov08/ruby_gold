module M1
  def my_method
    'M1#my_method()'
  end
end

class C
  include M1
end

class D < C
end

D.ancestors                     # => [D, C, M1, Object, Kernel, BasicObject]

module M2
  def my_method
    'M2#my_method()'
  end
end

class C2
  prepend M2
end

class D2 < C2
end

D2.ancestors                    # => [D2, M2, C2, Object, Kernel, BasicObject]
