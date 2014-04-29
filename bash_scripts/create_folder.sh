#!/bin/bash

if [ -f /.folder_created ]; then
	echo "Folder already created!"
	exit 0
fi

if [[ $# -ne 1 ]]; then
	echo "Usage: $0 <upload_uuid>"
	echo "You supplied $# arguments: $0 $1"
	exit 1
fi

echo "=> Creating Folder $4"
mkdir -p /uploads/$4
echo "=> Done!"

touch /.folder_created
