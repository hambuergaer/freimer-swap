class swap::mount (
	$needed_swap_space = $swap::params::$needed_swap_space,
	$rootlv_vg = $swap::params::$rootlv_vg,
)
inherits swap::params {

include lvm

# Create SWAP LVM volume

logical_volume { "swaplv":
	ensure		=> present,
	volume_group	=> $rootlv_vg,
	size		=> $needed_swap_space,
} ->

filesystem { "/dev/${$rootlv_vg/swaplv":
	ensure	=> present,
	fs_type	=> swap,
} ->

mount { 'swap':
	atboot  => "yes",
	ensure  => mounted,
	device	=> "/dev/mapper/${$rootlv_vg}-swaplv",
	fstype  => swap, 
	}

}
