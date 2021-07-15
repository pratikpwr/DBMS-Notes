# CRUD

## READ

- get documents
- it gives cursors just like pagination
```
db.collection.find()
```

- find one document matching condition
```
db.collection.findOne({"fieldName": "fieldValue"})
```

- to find multiple document matching condition
```
db.collection.find({"fieldName": "fieldValue"})
```

## Operators (Query Selectors)

### Conditional

- `$eq $gt $lt $gte $lte $ne`

- products whose price is greater than 20
```
db.products.find({price: {$gt: 20}})
```

### Logical

- `$and $or $nor $nand $not`

- products whose price between 20 to 0
```
db.products.find({
    $and: [
        {price: {$gt: 20}},
        {price: {$lt: 30}}
    ]
})
```

### Element Operators

- `$exists` - matches document that have specific field
```
db.users.find({$exists: })
```

- `$type` - selects diocument if a field is of that type

```

```

### Evaluation Operators

- `$regex` - helps with strings

```
db.movies.find({summary: {$regex : /musical/}})
```

- `$expr` - experssions - like logical experssion

- deal where buyPrice > sellPrice
```
db.deal.find(
    {
        $exper:{
            $gt: ["buyPrice", "sellPrice"]
        }
    }
)
```

### Array Operators

```

```

<br>
</br>

## Projections

### sort

- 1 for ascending | -1 for descending

- get products in asc price order
```
db.products.find({category: "Books"}).sort({"price": 1})
```

### skip
- skips the number of pervious results `.skip(10)`

### limit 
- limit the number of documents retrieved `.limit(100)`

### count
- counts the amount of documents retrieved by query `.count()`

### slice
- slices the array upto amount `$slice: 3 or [2,3]`

### Projection to shape our results

- in `find()` we can pass second argument as projection values
- we can mwntions the keys which we want in the result
- 1 for add key in result and 0 for neglect it

- eg get the title of product only
```
db.products.find({}, {title: 1, _id 0})
```