autossh
=======

auto login ssh server

Usage: -l <hostinfo> [more options]
  Available options
    -l : link host name
    -h : host list
    -s : search hostinfo
    -a : add new hostinfo
    	Usage: <nickname> <server> <port> <username> <passwd> <-version>

install autossh：
	./install.sh
	if can’t execute, chmod +x install.sh

add a server:
	autossh -a <nickname> <server> <port> <username> <passwd> <-version>

list servers：
	autossh -h

query a server：
	autossh -s <nickname>/<server>


link a server：
	autossh -l <nickname>/<server>
	