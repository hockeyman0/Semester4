#! /usr/bin/env python2.6

import re
import sys
import os

argv = len(sys.argv)
if argv != 2:
	print "usage: ipfun.py <filename>"
	sys.exit(1)


argo = sys.argv[1]

if (os.access(argo, os.R_OK) == 0):
	print argo, "is not readable"
	sys.exit(2)

InFile = open(argo, "r")


functionline = r"def(\s)+([A-Za-z])([\w_-])*(\s)*\(([\w,=\s_-])*\):"



	