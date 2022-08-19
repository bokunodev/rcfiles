function copyrealpath() {
	if [ "${1}" = '' ] ; then
		echo 'one parameter, path to file required'
		exit 1
	fi
	realpath $1 | xclip -sel clip
}
