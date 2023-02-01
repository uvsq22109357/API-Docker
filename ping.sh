#! bin/bash/
ip=172.22.174
c=0
d=0
for i in $ip.{1..255}
do
	ping -c 1 $i
	if [ $? -eq 0 ]
	then  
	 let "c=c+1"; echo "$i" >> online_list.txt
	else
	 echo "$i" >> offline_list.txt
	fi
done
let "d=255-$c"
echo "On a $c hosts en ligne"
echo "et $d hosts hors ligne"
