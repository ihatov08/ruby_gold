require './data_source'
require 'pry'
class Computer
  def initialize(computer_id ,data_source)
    @id = computer_id
    @data_source = data_source
  end

  def mouse
    component :mouse
  end

  def cpu
    component(:cpu)
  end

  def keyboard # !> mismatched indentations at 'end' with 'def' at 15
    component :keyboard
  end

  def component(name)
    info = @data_source.send("get_#{name}_info", @id) # !> instance variable @data_source not initialized
    price = @data_source.send("get_#{name}_price", @id)
    result = "#{name.capitalize}: #{info} ($#{price})"
    return "* #{result}" if price >= 100
    result
  end
end
my_computer = Computer.new(42, DS.new) # => #<Computer:0x007fc18e846ca8 @id=42, @date_source=#<DS:0x007fc18e846cd0>>
DS.new.get_cpu_info(42)                # => "2.9 Ghz quad-core"
my_computer.cpu                        # => 
# ~> -:22:in `component': undefined method `get_cpu_info' for nil:NilClass (NoMethodError)
# ~> 	from -:14:in `cpu'
# ~> 	from -:31:in `<main>'
