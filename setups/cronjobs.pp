
cron { "CarlySimon-Twitter":
  ensure  => present,
  command => "ruby /home/stahnma/development/carlysimon/bin/twitter.rb >> /home/stahnma/development/carlysimon/state/twitter_count.txt",
  user    => 'stahnma',
  minute  => '*/15',
}
