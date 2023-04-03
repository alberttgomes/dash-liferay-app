#!/bin/bash

ARTIFACTS="$LIFERAY_HOME/artifacts"

# Copy artifacts to into deploy folder
if [ -d $ARTIFACTS ] 
then
    if [ -z "$(ls -A $ARTIFACTS)" ] 
    then
        echo "No files found in the $ARTIFACTS folder"
    else
        echo "Copy files from $ARTIFACTS folder to into deploy folder"
        mv -v $ARTIFACTS/*jar $LIFERAY_HOME/deploy/
    fi
fi

# Run Liferay
/opt/liferay/tomcat/bin/catalina.sh run