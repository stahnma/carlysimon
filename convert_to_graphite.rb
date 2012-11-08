#!/usr/bin/env ruby

require 'date'

IO.read('/home/stahnma/twitter_count.txt').each_line do |line|
  dt, val = line.split(',')
  dt = DateTime.parse(dt)
  puts "twitter.followers.stahnma #{val.strip} #{dt.strftime('%s')}"
end
