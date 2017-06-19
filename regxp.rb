%r|(http://www(\.)(.*)/)| =~ "http://www.abc.com/"

p $0                              # => "-"
p $1                              # => "http://www.abc.com/"
p $2                              # => "."
p $3                              # => "abc.com"
p $4                              # => nil
