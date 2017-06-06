begin
  exit
rescue StandardError
  p 'StanderdError'
rescue SystemExit
  p 'SystemExit'
end

puts 'end'
