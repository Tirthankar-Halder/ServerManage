#!/bin/bash
echo "============== Server Automation Script ================"
declare -A ServerList=( ["Server 1"]="10.171.9.112" ["Server 2"]="10.171.9.113")
declare -A ServerCredential=( ["10.171.9.112"]="GSSST@cpu2" ["10.171.9.113"]="GSSST@cpu3")
# echo "${ServerList["Server 1"]}"
for server in "${!ServerList[@]}"; do echo "$server - ${ServerList[$server]} - ${ServerCredential[${ServerList[$server]}]}"; done

echo "============== Available Server================"
declare -A AvailableServer
for server in "${!ServerList[@]}"; do
out=$(ping -c 1 ${ServerList[$server]} | awk '{print $4}'); 
echo ${out};

# if [ ]; then
#     echo "$out sounds alright to me"
# else
#     echo "Doesn't sound like anything to me"
# fi

done