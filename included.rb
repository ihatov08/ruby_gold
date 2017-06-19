module Feature
  def self.included(klass)
    p "#{klass} has included #{self}"
  end
end

class Container
  include Feature
end
# >> "Container has included Feature"
