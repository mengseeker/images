#!/usr/bin/env ruby
f = ARGV[0]
raise 'empty image' if f.nil? || f.empty?
path = f.gsub(":", "/").gsub("@", "/")
exit 1 if !system("mkdir -p #{path}")
File.open(path + "/Dockerfile", "w") do |df|
  df.write("FROM #{f}")
end
puts "#{path}/"
puts f.gsub("/", "_").gsub(":","-").gsub("@", "-")
puts "registry.cn-qingdao.aliyuncs.com/bill-xing/common:" + f.gsub("/", "_").gsub(":","-").gsub("@", "-")
