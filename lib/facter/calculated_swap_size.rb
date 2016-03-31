require 'facter'
Facter.add("calculated_swap_size") do
      confine :kernel => :linux, :operatingsystem => %w{CentOS Fedora RedHat}
      setcode do
	Facter::Util::Resolution.exec('/usr/local/bin/calculate-swap-size.py')
      end
end
