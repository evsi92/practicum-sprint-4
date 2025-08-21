#!/bin/bash

echo "mongos_router:"
docker compose exec -T mongos_router mongosh --port 27020 --quiet <<EOF
use somedb
db.helloDoc.countDocuments()
EOF

echo -e "\nshard1:"
docker compose exec -T shard11 mongosh --port 27018 --quiet <<EOF
use somedb
db.helloDoc.countDocuments()
rs.status()
EOF

echo -e "\nshard2:"
docker compose exec -T shard21 mongosh --port 27019 --quiet <<EOF
use somedb
db.helloDoc.countDocuments()
rs.status()
EOF