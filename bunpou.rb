X = "abc"
def m
  X                             # => エラー起きない 
end

def m
  X << 'def'                    # => エラー起きない
end

def m
  X += 'def'                    # =>  dynamic constant assignment
end

def m
  X = 'abc'                     # =>  dynamic constant assignment
end
# ~> -:11: dynamic constant assignment
# ~> ...97536876_27088_996373 = (  X += 'def'                   );$s...
# ~> ...                               ^
# ~> -:15: dynamic constant assignment
# ~> ...497536876_27088_996373 = (  X = 'abc'                    );$...
# ~> ...                               ^
