module StringExtensions
  refine String do
    def to_alphanumeric
      gsub(/[^\w\s]/, '')
    end

    def reverse
      'esrever'
    end
  end
end

module StringToAlphanumeric
  using StringExtensions
  "my *1st* refinement!".to_alphanumeric
end

module StringStuff
  using StringExtensions
  'my_string'.reverse           # => "esrever"
end

'my_string'.reverse             # => "gnirts_ym"
