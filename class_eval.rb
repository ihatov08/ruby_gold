def add_method_to(class_name)
  class_name.class_eval do
    def inc(x)
      self + x
    end
  end
end

add_method_to Fixnum
1.inc(1)                        # => 2
