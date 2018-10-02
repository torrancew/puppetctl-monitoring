Facter.add(:role) do
  has_weight 100
  confine :virtual => 'gce'

  setcode do
    Facter.value(:gce).dig('instance', 'attributes', 'role')
  end
end
