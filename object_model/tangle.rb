module Printable
  def print
    p 'printable print'
  end

  def prepare_cover
    p 'prepare_cover'
  end
end

module Document
  def print_to_screen
    prepare_cover
    format_for_screen
    print
  end

  def format_for_screen
    p 'format_for_screen'
  end

  def print
    p 'document print'
  end
end

class Book
  include Document
  include Printable
end

b = Book.new
b.print_to_screen               # => "printable print"
Book.ancestors                  # => [Book, Printable, Document, Object, Kernel, BasicObject]
#
class Book2
  include Printable
  include Document
end

b2 = Book2.new
b2.print_to_screen              # => "document print"
Book2.ancestors                 # => [Book2, Document, Printable, Object, Kernel, BasicObject]
#
class Err1 < StandardError
end
class Err2 < Err1
end
begin
  raise Err2
rescue => e
  p "#{e}StandardError"
rescue Err2 => ex
  p ex.class
end

def tag name, &block
  puts "<#{name}>#{block.call}<#{name}>"
end

tag(:p) { "hello, world" }       # => nil
#
def hoge x: , y: 2, **params
  p "#{x}, #{y}, #{params[:z]}"
end

hoge x: 1, z: 3                 # => "1, 2, 3"
#
hi = ->(x){ puts "hello #{x}."}
hi.call('world')                # => nil
# >> "prepare_cover"
# >> "format_for_screen"
# >> "printable print"
# >> "prepare_cover"
# >> "format_for_screen"
# >> "document print"
# >> "Err2StandardError"
# >> <p>hello, world<p>
# >> "1, 2, 3"
# >> hello world.
