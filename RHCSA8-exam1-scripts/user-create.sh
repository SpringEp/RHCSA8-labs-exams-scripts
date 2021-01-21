#!/bin/bash

for i in {5..7}; do
	useradd user$i$i$i  #-s /sbin/nologin
	echo user$i$i$i:user$i$i$i | chpasswd
done

cut -d : -f 1 /etc/passwd | tail -n 3 >> /var/tmp/newusers

echo "Newly added users are: "
cat /var/tmp/newusers
exit 0
