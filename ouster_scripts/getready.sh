#!/bin/bash
#Defining Interpreter bash
printf "Make sure Ethernet Cable is not pluged in. Enter to move on..." 
read -n 1 mainmenuinput #Waiting for any keyboard input
printf "Setting up the fixed IP Address (192.168.1.1/24) of the NUC..."
sudo ip link set dev enp5s0 up # Open port configuration. enp5s0 is Port of NUC (Hardware spesific number)
sudo ip addr add 192.168.1.1/24 dev enp5s0 # Add address with port 24 to the IP-address
printf "Plug the Ethernet cabel in (Port closer to the powersupply). Enter to move on..."
read -n 1 mainmenuinput
printf "Setting up the DHCP-Server...\n After the connection message open a new terminal and run any start_*.sh\n"
gnome-terminal -e "bash -c \"sudo dnsmasq -C /dev/null -kd -F 192.168.1.50,192.168.1.100 -i enp5s0 --bind-dynamic; exec bash\"" #Run new terminal with DHCP server that searches for the ouster
sleep 5
