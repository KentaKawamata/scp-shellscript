#!/bin/sh

user=username
server=DNS or IP
passwd=password

echo -n CURRENT_PATH_AND_FILE:
read current_dir

echo -n TEMP_PATH_AND_FILE:
read temp_dir

expect -c "
spawn scp -P 443 ${user}@${server}:${current_dir} /home/user/${temp_dir}

expect \"server's password: \"
send \"${passwd}\n\"
interact
"
