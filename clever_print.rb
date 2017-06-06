def clever_print(*args)
  contents = []
  args.each do |arg|
    case arg
    when Array
      contents.push(arg)
    when Hash
      contents.push(arg.first)
    end
  end
  contents.join(' ')
end

clever_print(["Ruby"], "the", ["Programming", "Language"])
# => "Ruby Programming Language"
 
clever_print(["Agile", "Web", "Development"], "with", { :Rails => 3.0 })
# => "Agile Web Development Rails 3.0"
