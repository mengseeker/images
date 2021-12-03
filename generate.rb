#!/usr/bin/env ruby
f = ARGV[0]
raise 'empty image' if f.nil? || f.empty?
exit 1 if !system("mkdir -p #{f}")
File.open(f + "/Dockerfile", "w") do |df|
  df.write("FROM #{f}")
end
puts "#{f}/Dockerfile"
