set -e

# Create log directory for Geth
mkdir -p /var/log

# Start Geth and direct output to stdout
/geth \
    --verbosity 5 \
    --datadir node0/ \
    --nat none \
    --nodiscover \
    --port 30310 \
    --txpool.journal '' \
    --rpc \
    --rpcaddr '0.0.0.0' \
    --rpcport 8501 \
    --rpcapi 'personal,db,eth,net,web3,txpool,miner,debug' \
    --networkid 50 \
    --mine \