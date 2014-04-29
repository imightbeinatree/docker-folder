docker-folder
==================
MAINTAINER Michael Orr <michael@cloudspace.com>

This Dockerfile makes it possible to create a folder for a user on an attached drive so that when you run further cotainers you only need to attach the user's specific folder to the container and can thus limit the user's ability to see other files that are stored on the full volume.

This Dockerfile is run with the -v option to link a directory and an environment variable "upload_uuid". When run, it creates the specified folder inside of the /uploads directory and so the local folder you link must be linked as /uploads within the container (/uploads must be the second part of the -v parameter).

Example Run:

    docker run -d -e "upload_uuid=1234-1234-1234" -v /local/path:/uploads imightbeinatree/folder

This is equivalent to:

    cd /local/path && mkdir 1234-1234-1234