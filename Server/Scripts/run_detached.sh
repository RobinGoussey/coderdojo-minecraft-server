#!/bin/bash

searchString=".*minecraft.*";
command=$(/usr/bin/screen -ls);
if [[ $command =~ $searchString ]]
then
	echo "Error: Server already running in detached screen" 1>&2;
	exit 1;
fi

/usr/bin/screen -h 1024 -dmS minecraft -L /bin/bash /home/robin/Desktop/minecraft_server/run_server.sh
echo "Started running server in detached screen";

searchString=".*No sockets found.*";
command=$(/usr/bin/screen -ls);
while [[ $command =~ $searchString ]] ; do
	echo $command;
	command=$(/usr/bin/screen -ls);
	sleep 1;
done
