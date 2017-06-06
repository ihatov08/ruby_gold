# 正常時であっても処理を抜けたい場合に、catchとthrowを使う
# throwが例外の場合のraiseに相当し、catchがbegin節に相当する
def foo
  throw :exit # throwがraiseに相当
end

catch(:exit) { # catchがbegin節に相当
  foo
  p 1
}

