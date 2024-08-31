#!/bin/bash

PROCESS_NAME="httpd"
SERVICE_NAME="httpd"

pgrep $PROCESS_NAME >> /dev/null

if [ $? -eq 0 ]; then
 echo "$PROCESS_NAME is running. No action required"
else
 echo "$PROCESS_NAME is not running. I am restarting $PROCESS_NAME"
  systemctl restart $SERVICE_NAME
  if [ $? -eq 0 ]
  then 
   echo "I have restarted $PROCESS_NAME successfully..!"
  else
   echo "*** I tried to restart $PROCESS_NAME, But there seems to be a problem. Please check ***"
 fi
fi
