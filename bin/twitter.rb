#! /usr/bin/env ruby

require 'rubygems'
require 'json'
require 'net/http'
require 'uri'

url =  "http://api.twitter.com/1/users/show/stahnma.json"

seeking = [ "followers_count", ]

data = {}


output = Net::HTTP.get URI.parse(url)
twitter_return = JSON.parse(output)
seeking.each do |item|
  data[item] = twitter_return[item]
end

data['followers_count'] = 0 if data['followers_count'].nil?

puts "#{Time.now}, #{data['followers_count']}"

