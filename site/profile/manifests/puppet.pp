class profile::puppet {
  cron::job { 'puppet':
    command => "/opt/puppetlabs/bin/puppet apply --verbose --environment ${environment} /etc/puppetlabs/code/environments/${environment}/manifests/site.pp",
    minute  => '*/5',
    user    => 'root',
  }
}
