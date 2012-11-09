

graphite_host = 'localhost'
graphite_port = '2003'

desc "It is probably about you"
task :default => [ :twitter  ] do
end

desc "Setup cronjobs"
task :setup do
  sh "puppet apply --verbose setups/cronjobs.pp"
end

desc "twitter"
task :twitter do
  sh "bin/twitter.rb >> state/twitter_count.txt"
  sh "cat state/twitter_count.txt | nc #{graphite_host} #{graphite_port}"
end


