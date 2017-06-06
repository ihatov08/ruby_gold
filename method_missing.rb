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
  def method_x
    puts "#{self.class.name}:method_x"
  end
  class << self
    def method_missing(id, *args)
      puts "B`method_missing()"
    end
  end
end

obj = B.new
obj.method_x                    # => nil
obj.method_y                    # => nil
B.method_hoge                   # => nil
# >> B:method_x
# >> A#method_missing()
# >> B`method_missing()
