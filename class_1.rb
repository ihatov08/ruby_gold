class Person
  def Person.hello
    p 'hello'
  end
end

class Student < Person
end

# def Person.helloでクラスメソッドで定義しても,
# 継承すればサブクラスでクラスメソッドを利用できる
Student.hello                   # => "hello"
# >> "hello"
