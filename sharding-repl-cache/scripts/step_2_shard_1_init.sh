#!/bin/bash

docker exec -it shard11 mongosh --port 27018 --eval '
rs.initiate(
    {
      _id : "shard1",
      members: [
        { _id : 0, host : "shard11:27018" },
        { _id : 1, host : "shard12:27015" },
        { _id : 2, host : "shard13:27013" }
      ]
    }
)
'

