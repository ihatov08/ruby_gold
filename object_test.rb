module M
  def self.foo
    p 'foo'
  end
end

class F
  include M
end


# クラスメソッドを使いたい場合は、def self.fooではなく
# def fooでextendする
F.foo                           # => 
# ~> -:11:in `<main>': undefined method `foo' for F:Class (NoMethodError)
