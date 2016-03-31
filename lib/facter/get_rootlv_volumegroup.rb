require 'facter'
Facter.add("rootlv_volumegroup") do
      confine :kernel => :linux, :operatingsystem => %w{CentOS Fedora RedHat}
      setcode do
	Facter::Util::Resolution.exec('/usr/local/bin/get-rootlv-volumegroup.sh')
      end
end
