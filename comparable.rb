class Sample
  include Comparable

  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def <=>(other)
    other.value <=> other.value
  end
end

a = Sample.new(10)              # => #<Sample:0x007f90001571a0 @value=10>
b = Sample.new(5)               # => #<Sample:0x007f9000156ac0 @value=5>
a.value                          # => 10
b.value                          # => 5
a < b                           # => false
a <= b                          # => true
a == b                          # => true
a > b                           # => false
a >= b                          # => true
