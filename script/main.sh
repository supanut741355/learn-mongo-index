db.createCollection("users")

use user_service_db

db.users.insertMany([
  {
    "_id": ObjectId("64d2f6c3d5e8e4b6b25d2b77"),
    "name": "Alice",
    "email": "alice@example.com",
    "age": 28,
    "created_at": ISODate("2023-08-01T12:00:00Z")
  },
  {
    "_id": ObjectId("64d2f6c3d5e8e4b6b25d2b78"),
    "name": "Bob",
    "email": "bob@example.com",
    "age": 32,
    "created_at": ISODate("2023-08-05T15:30:00Z")
  },
  {
    "_id": ObjectId("64d2f6c3d5e8e4b6b25d2b79"),
    "name": "Charlie",
    "email": "charlie@example.com",
    "age": 25,
    "created_at": ISODate("2023-08-10T09:45:00Z")
  },
  {
    "_id": ObjectId("64d2f6c3d5e8e4b6b25d2b7A"),
    "name": "Diana",
    "email": "diana@example.com",
    "age": 30,
    "created_at": ISODate("2023-08-15T20:10:00Z")
  }
])

db.users.createIndex({
  "name": 1, 
  "age": 1
})

db.users.insertOne({
  "_id": ObjectId("64d2f6c3d5e8e4b6b25d2b7B"),
  "name": "Ethan",
  "email": "ethan@example.com",
  "age": 29,
  "created_at": ISODate("2023-08-20T18:00:00Z")
})

db.users.insertMany([
  {
    "name": "Anonymous",
    "email": "anonymous1@example.com",
    "age": 17,
    "created_at": ISODate("2023-08-20T18:00:00Z")
  },
  {
    "name": "Anonymous",
    "email": "anonymous2@example.com",
    "age": 42,
    "created_at": ISODate("2023-08-20T18:00:00Z")
  },
  {
    "name": "Anonymous",
    "email": "anonymous3@example.com",
    "age": 57,
    "created_at": ISODate("2023-08-20T18:00:00Z")
  }
])

db.users.createIndex({
  "name": 1, 
  "email": 1, 
  "age": 1
})

db.users.createIndex({
  "age": 1, 
  "name": 1
})

db.users.createIndex(
  "name": 1,
  "age": 1
})

db.users.find({age: {$gte: 10, $lte: 50}, name: "Anonymous"})

db.users.find({age: {$gte: 10, $lte: 50}, name: "Anonymous"}).sort({score: 1})



db.users.createIndex(
  "name": 1,
  "age": 1,
  "score": 1
})


db.users.createIndex({
  "name": 1,
  "age": 1,
  "score": 1
})


#result index seartch
[
  {Anonymous, 17, 11},
  {Anonymous, 42, 5},
]

#result query expect
[
  {Anonymous, 42, 5},
  {Anonymous, 17, 11},
]

db.users.createIndex({
  "name": 1,
  "score": 1,
  "age": 1
})
