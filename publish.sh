#!/usr/bin/env bash
# title: Publish winelist.pdf
# author: sjt@lambenttechnology.com
# date: 2021.03.15
#
DESTN=bouquetwines.com;
OUT=pdf/winelist.pdf;
SRVR=lambent.net;
USR=stephen;

echo "## Send $OUT to $SRVR/$DESTN";
scp $OUT $USR@$SRVR:/var/www/$DESTN;
echo "## Sent $OUT to $SRVR/$DESTN";
