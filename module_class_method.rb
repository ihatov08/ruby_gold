# moduleにクラスメソッド風に定義して、classにincludeしても
# クラスメソッドとして使えない
# クラスメソッドとして使いたければ、インスタンスメソッド風に定義して、
# extendする
module Mod
  def Mod.foo
    'Mod.foo'
  end

  def self.fuga
    'Mod.fuga'
  end

  def bar
    'Mod bar'
  end

  def Cls1.baz
    'Mod baz'
  end
end

class Cls1
  extend Mod
  include Mod
  def Cls1.hoge
    'Cls1.hoge'
  end
end

Cls1.bar                        # => 
Cls1.baz                        # => 
Cls1.foo                        # => 
Cls1.fuga                       # => 
# ~> -:14:in `<module:Mod>': uninitialized constant Mod::Cls1 (NameError)
# ~> 	from -:1:in `<main>'
