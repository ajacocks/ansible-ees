#!/bin/sh

if [ -z "$1" ]; then
	echo "usage: build.sh <token from Red Hat Automation Hub>"
	exit 1
fi

ansible-builder build --build-arg AH_TOKEN="$1" -v3
