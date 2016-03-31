class swap {

include swap::scripts
include swap::mount

Class['swap::scripts'] ->
Class['swap::mount']

}
