require 'optparse'

opt = OptionParser.new

options = {}

opt.on("-o", "--output", "output file") { |v| options["output"] = v }
opt.on("-i", "--input", "input file") { |v| options["input"] = v }

opt.parse!(ARGV)

p options
p ARGV
