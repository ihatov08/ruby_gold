class C
  attr_accessor :v
  @v = 1
  def initialize
    @v = 100
  end
  def m
    @v = 2
  end
  class << self
    @v = 3
    def m
      @v
    end
  end
end

C.m                             # => 1
C.new.m                         # => 2
class << C
  @v                            # => 3
end

c = C.new
c.v = 100
class << c
  @v                            # => nil # !> instance variable @v not initialized
end
# 生成オブジェクト内でインスタンス変数未定義のため。
class C1
  def m(arg = 1)
    p arg
  end
end

class C2 < C1
  def m(arg)
    # 親クラスのmメソッドを引数指定有りで呼ぶ
    super(2)
    # 親クラスのmメソッドを引数指定有り(super(arg)の省略記法)で呼ぶ
    super
    # 親クラスのmメソッドを引数指定なしで呼ぶ
    super()
  end
end
C2.new.m 2
# >> 2
# >> 2
# >> 1
