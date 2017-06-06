require 'awesome_print'

local_time = {  city: 'Rome', now: Time.now }
ap local_time, indent: 2        # => {:city=>"Rome", :now=>2017-05-28 14:19:01 +0900}
# >> {
# >>   :city => "Rome",
# >>    :now => 2017-05-28 14:19:01 +0900
# >> }
