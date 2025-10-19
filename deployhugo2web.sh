#!/bin/bash
#
# Author: Manel Guerra
# Date: October 2025
#
# The following script is to help automate then generation of an Hugo site and deployment via rsync. 
# 
# This script needs executions privileges:
#
# 	$ chmod +x deployhugo2web.sh
#
# Usage:
#
#   $ ./deployhugo2web.sh 
#
# Idea taken from https://gohugo.io/host-and-deploy/deploy-with-rsync/
#
########################

# defining variables

USER=user_name_of_host
HOST=host_to_deploy
DIR_SOURCE=local_dir_of_content # do not add final /
DIR_TARGET=remote_dir_to_deploy

# building your minified site, with no old content

hugo --minify --cleanDestinationDir

# syncs the site deleting old content except --exclude (dependances with off-building uploads -> manual folders, external docs, i.e.)
# use as many --exclude options as you need, one for every folder (local or remote) to avoid

rsync -avz --delete --exclude='subfolder_to_exclude' ${DIR_SOURCE}/ ${USER}@${HOST}:~/${DIR_TARGET} 

