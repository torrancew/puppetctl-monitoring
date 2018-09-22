class profile::r10k {
  cron::job { 'r10k':
    command => '/usr/bin/r10k --verbose info deploy environment --puppetfile',
    minute  => '*/2',
    user    => 'root',
  }
}
