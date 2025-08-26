#!/bin/bash

docker exec -it shard21 mongosh --port 27019 --eval '
rs.initiate(
    {
      _id : "shard2",
      members: [
        { _id : 0, host : "shard21:27019" },
        { _id : 1, host : "shard22:27016" },
        { _id : 2, host : "shard23:27014" }
      ]
    }
  )
  '

