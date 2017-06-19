class A
  def foo
    puts "クラスA#foo"
  end
end

module M
  def foo
    super
    puts "モジュールM#foo"
  end
end

class A
  prepend M
end

p A.ancestors                   # => 
A.new.foo                       # => 

# module M
#   def foo
#     p "モジュールM#foo"
#   end
# end

# class A
#   include M
#   def foo
#     super
#     p "クラスA#foo"
#   end
# end

# A.ancestors                     # => [A, M, Object, Kernel, BasicObject]
# A.new.foo

# module M
#   def hoge
#     p "module M"
#     super
#   end
# end

# class Hoge
#   def hoge
#     p "class Hoge"
#   end
# end

# class Fuga < Hoge
#   include M
#   def hoge
#     p "class Fuga"
#     super
#   end
# end

# Fuga.new.hoge

# module M
#   def foo
#     super
#     p "モジュールM#foo"
#   end
# end

# class A
#   include M
#   def foo
#     super
#     p "クラスA#foo"
#   end
# end

# p A.ancestors                   # => [A, M, Object, Kernel, BasicObject]
# A.new.foo       
# => 
# ~> -:80: syntax error, unexpected end-of-input
