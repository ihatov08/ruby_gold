module M1
end

module M2
  include M1
end

module M3
  prepend M1
  include M2
end

M3.ancestors                    # => [M1, M3, M2]

Kernel.private_instance_methods.grep(/^pr/) # => [:print, :printf, :proc]
