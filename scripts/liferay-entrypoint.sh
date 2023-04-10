#!/bin/bash

ARTIFACTS="$LIFERAY_HOME/artifacts"

# Copy artifacts to into deploy folder
if [ -d $ARTIFACTS ] 
then
    
    # Check if was copied successfully to artifact
    if [ -z "$(ls -A $ARTIFACTS)" ] 
    then
        echo "No files found in the $ARTIFACTS folder"
    else
        #Copy files from artifact to deploy
        echo "Building bundles directory into Liferay container..."

        echo "Moving files from $ARTIFACTS to into deploy folder"
        mv -v $ARTIFACTS/*jar $LIFERAY_HOME/deploy/
    fi
fi

# # Run Liferay
/opt/liferay/tomcat/bin/catalina.sh run