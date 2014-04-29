#!/bin/bash
if [ ! -f /.folder_created ]; then
  /create_folder.sh "$upload_uuid"
fi