class Greeting
  def initialize(text)
    @text = text
  end
  def welcome
    @text
  end
end

my_object = Greeting.new('hello')

my_object.class                 # => Greeting
my_object.class.instance_methods(false) # => [:welcome]
my_object.instance_variables            # => [:@text]
