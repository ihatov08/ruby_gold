module M
  CONST = 1
  @@v = 2

  def instance_method
    p 'module m instance_method'
  end

  def self.class_method
    p 'module M class_method'
  end
end

class C
  include M
  p @@v + 1
  p CONST
end

C.new.instance_method
# クラスメソッドは引き継がれない
C.class_method
# ~> -:21:in `<main>': undefined method `class_method' for C:Class (NoMethodError)
# ~> Did you mean?  class_eval
# >> 3
# >> 1
# >> "module m instance_method"
