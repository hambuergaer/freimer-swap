#!/bin/bash

usedswap=`swapon | tail -n +2 | tr -s " " | tr " " ";" | cut -d ";" -f 1 | cut -d "/" -f 3`
devmapper=`ls -l /dev/mapper/vg_system-swaplv | cut -d ">" -f 2 | cut -d "/" -f 2`
if [ "$devmapper" = "$usedswap" ]
then 
	echo "swap is used"
	exit 0
else 
	echo "swap is not used"
	exit 1
fi

