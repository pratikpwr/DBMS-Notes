# CRUD

## Update

### updateOne
- update the first document fetched by query

```
db.products.updateOne({_id: ObjectId(emr-tre-iyu)}, {$set: {title: "The Book : 2nd Edition"}})
```

### updateMany 

- update many document fetched by query

```
db.products.updateMany({price: {$gte: 100}}, {$set: {sale: "20%"}})
```

### Update Operator

`$set` - set the new value

`$inc` - increment the value of key

`$min` - changes the value if new value is lower than existing value

`$max` - changes the value if new value is greater than existing value

`$mul` - multiples with value specified

`$unset` - get reed of a field from selected documents

`$rename` - rename fields name

`upsert` - if while upadting document does not exist it will be created, specify it as true in third parameter

`$push` - adds element to array, dublicate values can be added

`$pull` - removes element from array

`$addToSet` - adds element to array, no dublicate values




