class Module
  def method_missing(id, *args)
    puts "Module#method_missing()"
  end
end

class Class
  def method_missing(id, *args)
    puts "Class#method_missing()"
  end
end

module M
  def method_missing(id, *args)
    puts "M#method_missing()"
  end
end

class A
  include M
  def method_missing(id, *args)
    puts "A#method_missing()"
  end
end

class B < A
  def self.method_x
    puts "#{self}.method_x"
  end
  def method_missing(id, *args)
    puts "B#method_missing()"
  end
end

B.method_x                      # => nil
B.method_y                      # => nil
# >> B.method_x
# >> Class#method_missing()
