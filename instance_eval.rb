class MyClass
  def initialize
    @v = 1
  end
end

# instance_evalに渡したブロックは、レシーバをselfにしてから
# 評価されるので、レシーバのprivateメソッドやインスタンス変数にも
# アクセスできる

obj = MyClass.new
obj.instance_eval do
  self                          # => #<MyClass:0x007fab2304e9a0 @v=1>
  @v                            # => 1
end
