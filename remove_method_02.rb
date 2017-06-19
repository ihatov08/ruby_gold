class Parent
  def greet() "hello" end
end
 
class Child < Parent
  undef_method :greet           # => Child
end
 
class GrandChild < Child
end

class Parent
  def hello() "hello" end
end
 
class Child < Parent
  remove_method :hello
end
 
class GrandChild < Child
end

Parent.new.hello                # => 
# ~> -:17:in `remove_method': method `hello' not defined in Child (NameError)
# ~> 	from -:17:in `<class:Child>'
# ~> 	from -:16:in `<main>'
