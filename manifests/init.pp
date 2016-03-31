class swap {

include swap::scripts
include swap::mounts

Class['swap::scripts'] ->
Class['swap::mounts']

}
