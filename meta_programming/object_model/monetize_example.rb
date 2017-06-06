require 'monetize'

bargain_price = Monetize.from_numeric(99, 'USD')
# bargain_price.format 
# => 
# ~> 	from -:1:in  `<main>'
# ~> 	from /Users/yoshidatomoya/.rbenv/versions/2.3.1/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:40:in  `require'
# ~> 	from /Users/yoshidatomoya/.rbenv/versions/2.3.1/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:127:in  `rescue in require'
# ~> 	from /Users/yoshidatomoya/.rbenv/versions/2.3.1/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:127:in  `require'
# ~> 	from /Users/yoshidatomoya/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/monetize-1.7.0/lib/monetize.rb:7:in  `<top (required)>'
# ~> 	from /Users/yoshidatomoya/.rbenv/versions/2.3.1/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in  `require'
# ~> 	from /Users/yoshidatomoya/.rbenv/versions/2.3.1/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in  `require'
# ~> 	from /Users/yoshidatomoya/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/monetize-1.7.0/lib/collection.rb:3:in  `<top (required)>'
# ~> 	from /Users/yoshidatomoya/.rbenv/versions/2.3.1/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in  `require'
# ~> 	from /Users/yoshidatomoya/.rbenv/versions/2.3.1/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in  `require'
# ~> /Users/yoshidatomoya/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/i18n-0.8.1/lib/i18n.rb:284:in `enforce_available_locales!': :en is not a valid locale (I18n::InvalidLocale)
# ~> 	from /Users/yoshidatomoya/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/i18n-0.8.1/lib/i18n.rb:151:in `translate'
# ~> 	from /Users/yoshidatomoya/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/money-6.9.0/lib/money/money/formatting.rb:310:in `i18n_format_for'
# ~> 	from /Users/yoshidatomoya/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/money-6.9.0/lib/money/money/formatting.rb:295:in `thousands_separator'
# ~> 	from /Users/yoshidatomoya/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/money-6.9.0/lib/money/money/formatting.rb:209:in `format'
# ~> 	from -:4:in `<main>'
