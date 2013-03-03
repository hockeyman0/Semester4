#! /usr/bin/env python2.6

import re
import sys
import os
Cato = {}

argv = len(sys.argv)
if argv != 2:
	print "usage: summarize_expr.py <filename> <course number>"
	sys.exit(1)


argo = sys.argv[1]
argt = sys.argv[2]

if (os.access(argo, os.R_OK) == 0):
	print argo, "is not readable"
	sys.exit(2)

InFile = open(argo, "r")
ipcheck = r"([0-1][0-9][0-9])|(2[0-4][0-9])|(25[0-5]).([0-1][0-9][0-9])|(2[0-4][0-9])|(25[0-5]).([0-1][0-9][0-9])|(2[0-4][0-9])|(25[0-5])."

for line in InFile:
	