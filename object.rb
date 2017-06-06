module Mod
  def foo
    'mod'
  end
end

class Cls1
  def foo
    'cls1'
  end
end

class Cls2 < Cls1
  include Mod
  undef foo
end

x = ['abc', 'defgk', 'lopq']
p x.sort { |a,b| a.size <=> b.size } # => ["abc", "lopq", "defgk"]

tag = -> (t, msg){
  print "<#{t}>#{msg}</#{t}>"
}

tag.call(:p, 'hello, world')    # => nil
# Cls2.new.foo                    # => 例外が発生する
# >> ["abc", "lopq", "defgk"]
# >> <p>hello, world</p>
