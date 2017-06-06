require './data_source'
class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def method_missing(name)
    super if !@data_source.respond_to?("get_#{name}_info")
    info =  @data_source.send("get_#{name}_info", @id)
    price = @data_source.send("get_#{name}_price", @id)
    result = "#{name.capitalize}: #{info} ($#{price})"
    return "*#{result}" if price >= 100
    result    
  end

  def respond_to_missing?(method, include_privete = false)
    @data_source.respond_to?("get_#{method}_info") || super
  end
end
 # !> mismatched indentations at 'end' with 'def' at 15
my_computer = Computer.new(42, DS.new)
my_computer.cpu                 # => "*Cpu: 2.9 Ghz quad-core ($120)"
my_computer.respond_to?(:mouse) # => false
my_computer.respond_to_missing?(:mouse) # => 
# ~> -:8:in `method_missing': wrong number of arguments (given 2, expected 1) (ArgumentError)
# ~> 	from -:21:in `<main>'
