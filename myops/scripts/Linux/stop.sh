#!/bin/sh

APPNAME="eTIMS VSCU"
APPJAR=vscu-v2.0.5.jar
APPOPTS="-XX:-LoopUnswitching -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled"

PID=`ps -ef | grep $APPJAR | grep -v grep | awk '{print $2}'`

echo "PID = $PID"

if [ -z "${PID}" ]; then
	echo "$APPNAME IS ALREADY STOPPED!!!"
else
	echo "STOPPING $APPNAME...."
	kill -9 $PID
	echo "$APPNAME HAS BEEN STOPPED SUCCESSFULLY!!!"
fi
