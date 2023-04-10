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

        # Copying artifacts to document library and deploying the customer .jar on bundles
        DOCUMENT_LIBRARY=$ARTIFACTS/data/29001

        if [ -d $DOCUMENT_LIBRARY ]
        then 
                echo "Moving document library from $ARTIFACTS to data folder..."
                mv $DOCUMENT_LIBRARY $LIFERAY_HOME/data/document_library/
        else 
                echo "Directory $DOCUMENT_LIBRARY not found"
        fi
    fi
fi

# # Run Liferay
/opt/liferay/tomcat/bin/catalina.sh run