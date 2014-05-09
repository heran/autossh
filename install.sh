#!/bin/bash

#check permission
testPath="/etc/profile"

if [ ! -w "$testPath" ]; then 
	echo “require root permission“
	exit
fi 

rm -fr ~/.ssh/autossh.exp
rm -fr /usr/bin/autossh

#copy files
cp autossh.exp ~/.ssh/autossh.exp
cp autossh.sh /usr/bin/autossh

if [[ ! -s  ~/.ssh/ssh_passwd ]]; then
	cp ssh_passwd ~/.ssh/ssh_passwd
fi

#change permission
chmod +x /usr/bin/autossh
chmod 777 ~/.ssh/ssh_passwd
chmod 777 ~/.ssh/autossh.exp

echo -e "\033[32;1mautossh install successs\033[0m"
echo -e "\033[32;1mauthor:heran\033[0m"
echo -e "\033[32;1memail:choudouhu@163.com\033[0m"
