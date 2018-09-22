class profile::puppet {
  cron::job { 'puppet':
    command => "/opt/puppetlabs/bin/puppet apply --verbose /etc/puppetlabs/code/environments/${environment}/manifests/site.pp",
    minute  => '*/5',
    user    => 'root',
  }
}
