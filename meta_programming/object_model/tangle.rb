module Printable
  def print
    'Printable#print'
  end

  def prepare_cover
    'prepare_cover'
  end
end

module Document
  def print_to_screen
    prepare_cover
    format_for_screen
    print
  end

  def format_for_screen
    'format_for_screen'
  end

  def print
    'Document#print'
  end
end

class Book
  include Document
  include Printable
end

b = Book.new
b.print_to_screen               # => "Printable#print"
Book.ancestors                  # => [Book, Printable, Document, Object, Kernel, BasicObject]

class Book2
  include Printable
  include Document
  ancestors                     # => [Book2, Document, Printable, Object, Kernel, BasicObject]
end


