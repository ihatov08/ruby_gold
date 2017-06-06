require 'json'

json = <<-DATA
["red", "green", "blue"]
DATA

JSON.load(json)                 # => ["red", "green", "blue"]

JSON.load(json, lambda { |x| p x }) # => ["red", "green", "blue"]

array = ['red', 'green', 'blue']

JSON.dump(array)                # => "[\"red\",\"green\",\"blue\"]"
# >> "red"
# >> "green"
# >> "blue"
# >> ["red", "green", "blue"]
