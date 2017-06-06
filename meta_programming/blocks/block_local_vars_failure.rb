def just_yield
  yield
end

top_level_variable = 1

just_yield do
  top_level_variable += 1
  local_to_block = 1 # !> assigned but unused variable - local_to_block
end

top_level_variable              # => 2
local_to_block                  # => 
# ~> -:13:in `<main>': undefined local variable or method `local_to_block' for main:Object (NameError)
