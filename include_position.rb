module M
  @@x = 100
end

class A
  @@x = 500
  include M
end

module M
  p @@x                         # => 100
end

class A
  p @@x                         # => 100 # !> class variable @@x of A is overtaken by M
end
# >> 100
# >> 100
