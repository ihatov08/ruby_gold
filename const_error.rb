class C
  VAR = 0
  def VAR=(v)
    VAR = v
  end
  def VAR
    VAR
  end
end
# メソッド内の定数の更新はコンパイルエラー
c = C.new
c.VAR = 3
p c.VAR
# ~> -:4: dynamic constant assignment
# ~>     VAR = v
# ~>          ^
