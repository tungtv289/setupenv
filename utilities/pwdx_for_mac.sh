lsof -a -p $1 -d cwd -n | tail -1
