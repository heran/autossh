#!/bin/bash

#check permission
testPath="/etc/profile"

if [ ! -w "$testPath" ]; then 
	echo “require root permission“
	exit
fi 

rm -fr /usr/bin/autossh.exp
rm -fr /usr/bin/autossh

#copy files
cp autossh.exp /usr/bin/autossh.exp
cp autossh.sh /usr/bin/autossh

#change permission
chmod +x /usr/bin/autossh
chmod +x /usr/bin/autossh.exp

echo -e "\033[32;1mautossh install successs\033[0m"
echo -e "\033[32;1mauthor:heran\033[0m"
echo -e "\033[32;1memail:choudouhu@163.com\033[0m"
