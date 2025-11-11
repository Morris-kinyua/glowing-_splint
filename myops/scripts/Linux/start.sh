#!/bin/sh

APPNAME="eTIMS VSCU"
APPJAR=vscu-v2.0.5.jar
APPOPTS="-XX:-LoopUnswitching -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled"

PID=`ps -ef | grep $APPJAR | grep -v grep | awk '{print $2}'`

echo "PID = $PID"

if [ -z "${PID}" ]; then
	echo "STARTING $APPNAME...."
	nohup java -jar $APPJAR 2>&1 &
	PID=`ps -ef | grep $APPJAR | grep -v grep | awk '{print $2}'`
	echo "$APPNAME HAS BEEN STARTED SUCCESSFULLY WITH PID $PID!!!"
else
	echo "$APPNAME IS ALREADY RUNNING WITH PID $PID"
fi
