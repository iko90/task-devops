# create user “adminuser”
+ sudo useradd adminuser

# set password for “adminuser”
+ sudo passwd adminuser

# grant for “adminuser” sudoer permission
+ sudo usermog -aG wheel adminuser

# create user “poweruser”
+ sudo useradd poweruser

# grant for “poweruser” permission for iptables command
+ sudo visudo 
+ poweruser ALL=(ALL) NOPASSWD: /usr/sbin/iptables - Append the following entry to run ALL command without a password 

# allow “poweruser” to read home directory of “adminuser” 
+ sudo setfacl -R -m user:poweruser:rx ~adminuser


# list all of files with SUID bit set
+ sudo find / -perm -4000