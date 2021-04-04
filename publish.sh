#!/usr/bin/env bash
# title: Publish winelist.pdf
# author: sjt@lambenttechnology.com
# date: 2021.04.04
#
DESTN=bouquetwines.com
OUT=winelist/winelist.pdf
SRVR=lambent.net
USR=stephen

echo "## Send $OUT to $SRVR/$DESTN"
scp $OUT $USR@$SRVR:/var/www/$DESTN
rc=$?
if (( rc > 0 )) ; then
	echo "*** [ERROR] rc: $rc"
	exit $rc
else
	echo "## Sent $OUT to $SRVR/$DESTN"
fi
