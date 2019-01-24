set -e

# Create log directory for Geth
mkdir -p /var/log

# Start Geth and direct output to stdout
geth --port 3000 --networkid 42 --nodiscover --datadir=./node0 --maxpeers=0  --rpc --rpcaddr localhost --rpcport 8545 --rpccorsdomain \"*\" --rpcapi \"eth,net,web3,personal,miner\" --mine
