def a_method(a,b)
  a + yield(a,b)
end

a_method(1,2) { |x,y| (x + y) * 3 } # => 10

def b_method
  return yield if block_given?
  'ブロックがありません'
end

b_method                        # => "ブロックがありません"
b_method { 'ブロックがあるよ' }                        # => "ブロックがあるよ"
