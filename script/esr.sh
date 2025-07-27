q1:

# {
#   "find": "messages",
#   "filter": {
#     userId: user505,
#     timestamp: {
#       "$gte": "2025-01-01T:00:00:00Z",
#       "$lte": "2025-02-01T:00:00:00Z",
#     }
#   },
#   "sort": {
#     "timestamp": -1
#   }
# }

doc
{
  _id: ObjectId("xxxx"),
  "userId": "user505",
  "username": "william",
  "message": "confirm recent tx",
  "timestamp": 2024-08-18T08:31:56.140+00.00,
  isRead: false,
  category: "Transaction",
  sender: "system"
}


db.message_tx.insertMany(
[
  {
    "_id": ObjectId("66a1f1e91a1a1a1a1a1a1a1a"),
    "userId": "user101",
    "username": "alice",
    "message": "Welcome to our service",
    "timestamp": ISODate("2024-08-01T09:15:00.000Z"),
    "isRead": false,
    "category": "Welcome",
    "sender": "system"
  },
  {
    "_id": ObjectId("66a1f1ea2b2b2b2b2b2b2b2b"),
    "userId": "user202",
    "username": "bob",
    "message": "Your password was changed",
    "timestamp": ISODate("2024-08-03T12:45:22.000Z"),
    "isRead": true,
    "category": "Security",
    "sender": "system"
  },
  {
    "_id": ObjectId("66a1f1eb3c3c3c3c3c3c3c3c"),
    "userId": "user303",
    "username": "carol",
    "message": "Payment successful",
    "timestamp": ISODate("2024-08-10T14:10:12.000Z"),
    "isRead": false,
    "category": "Transaction",
    "sender": "system"
  },
  {
    "_id": ObjectId("66a1f1ec4d4d4d4d4d4d4d4d"),
    "userId": "user404",
    "username": "dave",
    "message": "Subscription renewed",
    "timestamp": ISODate("2024-08-12T08:30:00.000Z"),
    "isRead": true,
    "category": "Subscription",
    "sender": "system"
  },
  {
    "_id": ObjectId("66a1f1ed5e5e5e5e5e5e5e5e"),
    "userId": "user505",
    "username": "eve",
    "message": "Confirm recent tx",
    "timestamp": ISODate("2024-08-18T08:31:56.140Z"),
    "isRead": false,
    "category": "Transaction",
    "sender": "system"
  }
]

)

2024-05-18T08:31:56.140+00:00
2024-08-18T08:31:56.140+00:00
2024-12-18T08:31:56.140+00:00

db.message.find({
  userId: "user505",
  timestamp: {
    $gte: new Date("2024-05-18T08:31:56.140+00:00"),
    $lte: new Date("2024-12-18T08:31:56.140+00:00"),
  },
}).sort({timestamp: -1})


db.message.find({
  userId: "user505",
  timestamp: {
    $gte: new Date("2024-05-18T08:31:56.140+00:00"),
    $lte: new Date("2024-12-18T08:31:56.140+00:00"),
  },
}).sort({category: 1})



db.message_tx.createIndex({ 
  "userId": 1, 
  "timestamp": -1, 
  "category": 1 
})


db.message_tx.createIndex({ 
  "userId": 1, 
  "category": 1, 
  "timestamp": -1, 
})

db.message_tx.createIndex({ 
  "userId": 1, 
  "timestamp": -1, 
})


{user_id: 1, category: 1, timestamp: 1}


{user_id: 1, timestamp: 1, category: 1}

db.users.getIndexes()