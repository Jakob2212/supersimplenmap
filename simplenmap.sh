#!/bin/bash

# Super Simple Nmap rookie script, with simple host check using ping, then asking for userinput flags and name of output file.

#Asking for  user input, saving it to "ip" variable.

echo "Type IP"
read ip

# Ping the ip to see if the host is up

ping -c 1 $ip

# If the exit status of the ping. If 0 it was successfull and then we can proceed with Namp. If anything else than zero, the script assumes the host is down and stops

if [ $? -eq 0 ]; then
	echo
	echo "Host available"
	echo
	echo
# Ask for Nmap flags, saving it to the "flags" variable
	echo "Type Nmap flags. Remember the -"
	read flags
	echo
# Ask for output filename and extension, saving it to the "output" variable	
echo "Type name of output file (filename.file-ext)"
	read output
# Running Nmap with flag, ip and output variables
	nmap $flag $ip -oN $output
# Based on the ping, the host is assumed to be down and closing down
else
echo "Ping failed - Host may be unavailable"

fi
