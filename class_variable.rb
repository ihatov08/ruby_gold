# moduleで定義されたclass変数(モジュール変数)は、
# そのmoduleをincludeしたclass間でも共有される

module Foo
  @@foo = 1
end

class Bar
  include Foo
  @@foo += 1                    # => 2
end

class Baz
  include Foo
  @@foo += 1                    # => 3
end
