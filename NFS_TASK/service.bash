#!/bin/bash

log_path="/var/log"
pods=("4" "11" "22" "33")
date=$(date +"%Y%m%d")

while true; do
#    date=$(date +"%Y%m%d")
    
    for i in "${pods[@]}"; do
        url="https://stateful$i.local"
        pod_name=${url:8}
      
        if curl -s "$url" >/dev/null; then
            echo "Pod $pod_name is working" >> "${log_path}/LOGS_${date}.logs"
        else
            echo "Pod $pod_name is not working" >> "${log_path}/LOGS_${date}.logs"
        fi
        
        printf "\n" >> "${log_path}/LOGS_${date}.logs"  

    done
    
    sleep 5  
done