#!/bin/sh
#
# A script to delay the start of some process.
#
# USAGE:
#   delaystartof.sh [periodInSeconds] <command>
#

periodinseconds=$1
[ -z "$periodinseconds" ] && shift

sleep ${periodinseconds:5}

exec $@

