module Mod
  def hoge
    'hoge'
  end
end

# extendではなく、クラスの特異メソッド定義 class << self
# 内でincludeすればクラスメソッドとして使える
# extendと一緒
class Cls1
  class << self
    include Mod
  end
  include Mod
end

Cls1.hoge                       # => "hoge"
Cls1.new.hoge                   # => "hoge"
