#!/bin/sh

EPOCH=`cat epoch`
echo $EPOCH

while :
do
	git add .
	GIT_AUTHOR_DATE=`date -u --date="@${EPOCH}"` GIT_COMMITER_DATE=`date -u --date="@${EPOCH}"` git commit -m "1.21 Gigawatts"
	EPOCH=`expr ${EPOCH} + 86400`
	echo $EPOCH > epoch
done
