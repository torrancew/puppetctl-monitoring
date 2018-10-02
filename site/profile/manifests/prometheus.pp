class profile::prometheus {
  include prometheus::server
  include prometheus::alertmanager
}
