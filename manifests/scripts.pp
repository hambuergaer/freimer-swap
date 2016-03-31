class swap::scripts {

# Ensure /usr/local/bin exists
file { "/usr/local/bin":
	ensure 	=> directory
} ->

# Deploy script to calculate needed SWAP space which is calculated by custom fact calculated_swap_size.rb
file { "/usr/local/bin/calculate-swap-size.py":
	ensure	=> present,
	source	=> "puppet:///modules/swap/calculate-swap-size.py",
	owner	=> "root",
	group	=> "root",
	mode	=> 655
} ->
	
# Deploy script to get rootlv volumegroup
file { "/usr/local/bin/get-rootlv-volumegroup.sh":
	ensure	=> present,
	source	=> "puppet:///modules/swap/get-rootlv-volumegroup.sh",
	owner	=> "root",
	group	=> "root",
	mode	=> 655
}
}
