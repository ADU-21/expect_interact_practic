#!/usr/bin/expect

set remote_user [lindex $argv 0]
set remote_pwd [lindex $argv 1]
set remote_host [lindex $argv 2]

spawn ssh-copy-id -i /Users/yxtan/.ssh/id_rsa.pub $remote_user@$remote_host
expect "password:"
send "$remote_pwd\r"

interact
