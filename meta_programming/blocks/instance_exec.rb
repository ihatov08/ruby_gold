class C
  def initialize
    @x = 1
  end
end

class D
  def twisted_method
    @y = 2
    C.new.instance_eval { "@x: #{@x}, @y:#{@y}" } # !> instance variable @y not initialized
  end
end

D.new.twisted_method            # => "@x: 1, @y:"

class E
  def twisted_method
    @y = 2
    C.new.instance_exec(@y) { |y| "@x: #{@x}, @y: #{y}" }
  end
end

E.new.twisted_method            # => "@x: 1, @y: 2"

class Cat
  def initialize(name)
    @name = name
  end
  private
  def hello
    'meow...'
  end
end

cat = Cat.new('piko')
p cat.instance_eval { @name + ": " + hello } # => "piko: meow..."
# >> "piko: meow..."
