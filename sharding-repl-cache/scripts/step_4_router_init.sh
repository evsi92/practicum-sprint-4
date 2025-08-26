#!/bin/bash

docker exec -it mongos_router mongosh --port 27020 --eval '
sh.addShard( "shard1/shard11:27018,shard12:27015,shard13:27013");
sh.addShard( "shard2/shard21:27019,shard22:27016,shard23:27014");

sh.enableSharding("somedb");
sh.shardCollection("somedb.helloDoc", { "name" : "hashed" } )
'

