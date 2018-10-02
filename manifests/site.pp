include profile::base

$facts.dig('role').then |$role| {
  if defined("role::${role}") {
    include "role::${role}"
  } else {
    warning("Could not find class for role ${role}")
  }
}
