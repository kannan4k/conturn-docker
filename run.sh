#! /usr/bin/env bash
set -eu

turnadmin -a -u kannan -r turn.galaxy.endpoint.com -p kannan4k
turnserver --simple-log -a -f -r turn.galaxy.endpoint.com
