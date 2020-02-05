

/usr/bin/screen -S minecraft -X eval 'stuff "stop^M"'

function print_output {
	echo "---------------------- output -------------------------";
	echo $1 $2 $3 $4 $5;
	echo "------------------------ end --------------------------";

}


output=$(/usr/bin/screen -ls);

while [[ $output =~ .*minecraft.* ]] ; do
	echo "Stopping server...";
	sleep 3;	
done ;

