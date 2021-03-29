#!/bin/bash

## Install JQ in the host machine
sudo yum install -y epel-release
sudo yum update -y
sudo yum install -y jq

## Retrieve the metadata of the instance IMDS is a REST API that's available at a well-known, non-routable IP address (169.254.169.254). You can only access it from within the VM. Communication between the VM and IMDS never leaves the host

curl -H Metadata:True --noproxy "*" "http://169.254.169.254/metadata/instance?api-version=2019-03-11&format=json" | jq . >metadata.json

echo "Metadata of the instance has been retrieved"
