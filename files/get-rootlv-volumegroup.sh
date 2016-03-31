#!/bin/bash

rootvg_name=$(lvdisplay | grep -i root | grep -i path | tr -s ' ' | cut -d '/' -f 3)
echo $rootvg_name

