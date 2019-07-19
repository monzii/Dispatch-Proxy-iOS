#! /bin/bash
# Turn Socks Proxy On/off
nohup bash -c "dispatch start -p 6060 > /dev/null 2>&1" 
##OR USE THIS FOR NO OUTPUT## nohup bash -c "dispatch start -p 6060"
