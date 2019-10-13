mkdir -p data/ipfsA data/ipfsB data/ipfsC
tee data/ipfsA/swarm.key data/ipfsB/swarm.key data/ipfsC/swarm.key < swarm.key
docker-compose up -d ipfsA ipfsB ipfsC
echo "HOST_IP=192.168.1.17" > .env
docker-compose up -d clusterA clusterB clusterC