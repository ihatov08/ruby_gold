# 指定したモジュールをselfの継承チェーンの先頭に追加することで,selfの定数、メソッド、モジュールの変数を
# 上書きする
module M
  def foo
    'M#foo'
  end
end

class C
  prepend M
  def foo
    'C#foo'
  end
end

C.new.foo                       # => "M#foo"
