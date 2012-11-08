#!/usr/bin/env ruby

require 'date'

IO.read('twitter_count.txt').each_line do |line|
  dt, val = line.split(',')
  dt = DateTime.parse(dt)
  puts "#{dt.strftime('%s')},#{val.strip}"
end
