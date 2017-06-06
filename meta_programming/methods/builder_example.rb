require 'builder'
xml = Builder::XmlMarkup.new(:target=> STDOUT, :indent=> 2)

xml.semester {
  xml.class 'エジプト学'
  xml.class '鳥類学'
}                               # => 

xml.coder {
  xml.name 'まつもと', :nickname => 'Matz'
  xml.language 'Ruby'
}                               # => 
# ~> -:7: syntax error, unexpected '}'
# ~> ...mp_1495960286_61314_926593 = (}                             ...
# ~> ...                               ^
# ~> -:12: syntax error, unexpected '}'
# ~> ...mp_1495960286_61314_926593 = (}                             ...
# ~> ...                               ^
# ~> -:16: syntax error, unexpected end-of-input, expecting ')'
