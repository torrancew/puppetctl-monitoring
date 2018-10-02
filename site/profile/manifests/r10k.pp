class profile::r10k {
  cron::job { 'r10k':
    command => '/usr/bin/r10k deploy --verbose info environment --puppetfile',
    minute  => '*/2',
    user    => 'root',
  }
}
