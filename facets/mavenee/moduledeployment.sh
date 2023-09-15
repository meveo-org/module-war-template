#!/bin/bash

wildfly_home="__WILDFLY_PATH__"
deployment_folder="$wildfly_home/standalone/deployments"
temp_folder="$wildfly_home/standalone/databackup"
ear_file="meveo.ear"

# remove meveo.ear file
rm "$deployment_folder/$ear_file*"
# reload wildfly
/$wildfly_home/bin/jboss-cli.sh --connect --command="shutdown --restart=true"
# copy meveo.ear file from temp folder ---
cp "$temp_folder/$ear_file" "$deployment_folder"
# remove temporary file
rm -r $temp_folder



