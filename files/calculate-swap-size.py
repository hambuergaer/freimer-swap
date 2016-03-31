#!/usr/bin/python
# 
# This script helps to calculate the needed SWAP space according to the recommendations
# on https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/Storage_Administration_Guide/ch-swapspace.html
#

import os

def get_memory_size():
	# for more informations see "man sysconf"
	mem_bytes = os.sysconf('SC_PAGE_SIZE') * os.sysconf('SC_PHYS_PAGES')
	mem_gib = float(mem_bytes/(1024.**3))
	mem_gib_rounded = int(round(mem_gib))
	return mem_gib_rounded

def calc_swap_size(totalmemory):
	if totalmemory < 2:
		swap = (totalmemory * 2)
		return swap
	else:
		swap = (totalmemory + 2)
		return swap

#print "TOTAL MEM: " + str(get_memory_size())
#print "CALCULATED SWAP: " + str(calc_swap_size(get_memory_size()))

print str(calc_swap_size(get_memory_size()))
