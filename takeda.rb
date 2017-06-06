f = Fiber.new do
  n = 0
  loop do
    Fiber.yield(n)
    n += 1
  end
end

# newで定義
# resumeで実行
# yieldでfiber終了

5.times do
  p f.resume                    # => 0, 1, 2, 3, 4
end

require 'date'
Date.new(2001,2,3) >> 1         # => #<Date: 2001-03-03 ((2451972j,0s,0n),+0s,2299161j)>

Date.new(2001,2,3) << 1         # => #<Date: 2001-01-03 ((2451913j,0s,0n),+0s,2299161j)>
# includeとprependの違い
#http://www.techscore.com/blog/2013/01/22/ruby2-0%E3%81%AEmodule-prepend%E3%81%AF%E5%A6%82%E4%BD%95%E3%81%AB%E3%81%97%E3%81%A6alias_method_chain%E3%82%92%E6%92%B2%E6%BB%85%E3%81%99%E3%82%8B%E3%81%AE%E3%81%8B%EF%BC%81%EF%BC%9F/
#
#
module Foo
  def self.included(mod)
    p "#{mod} include #{self}"
  end
end

class Bar
  include Foo
end

# rサフィックスでRationalインスタンスを作れる
#
def log(msg, level: 'ERROR', time: Time.now)
  puts "#{time.ctime} [#{level}] #{msg}" # => nil
end

p log('Hello', level: "INFO")     # => nil

module SomeExtensions
  refine String do
    def to_camelcase
      split('_').map(&:capitalize).join('')
    end
  end
end

class RefineTest
  using SomeExtensions

  def initialize
    p 'refinement_is_good'.to_camelcase
  end
end

RefineTest.new

# rescue 節で型を省略すると、StandardError 一族の例外を捕捉
#
def m
  begin
    p 'begin'
    1
  ensure
    p 'ensure'
    2                           # このensure節の値は無視される
  end
end

p m       # => 1
#
#・private レシーバ経由で呼べない、関数形式のみ許容
# ・protected レシーバ経由でも呼べる。ただし仲間に限る
# ・どっちもサブクラスからも呼べる（C++とは違う）
# ・どっちも他人からは呼べない
#
# メソッド内で定数を更新もしくは=定義するとSyntaxErrorが発生する
# p 'refinement_is_good'.to_camelcase これはundifined method
# >> 0
# >> 1
# >> 2
# >> 3
# >> 4
# >> "Bar include Foo"
# >> Sun May 21 22:43:04 2017 [INFO] Hello
# >> nil
# >> "RefinementIsGood"
# >> "begin"
# >> "ensure"
# >> 1
