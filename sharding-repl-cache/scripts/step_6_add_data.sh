#!/bin/bash

###
# Инициализируем бд
###

docker exec -it mongos_router mongosh --port 27020 --eval '
const db = db.getSiblingDB("somedb");
const docs = Array.from({length: 1000}, (_, i) => ({ age: i, name: "ly" + i }));
const result = db.helloDoc.insertMany(docs);
print("Inserted", result.insertedCount, "documents");
print("Collection now has", db.helloDoc.countDocuments(), "documents");
'
