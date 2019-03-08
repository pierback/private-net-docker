IP=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')
WSPORT=8546
RPCPORT=8501
printf "ws://"$IP":"$WSPORT > bchainIp

docker run -it --rm -p $IP:$RPCPORT:$RPCPORT -p $IP:$WSPORT:$WSPORT private-net