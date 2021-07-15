# CRUD

## Delete

### deleteOne()
- delete element with matching query
```
db.collection.deleteOne({"fieldName": "fieldValue"})
```

### deleteMany()
- delete all elements with matching query
```
db.collection.deleteMany({"fieldName": "fieldValue"})
```

- delete all documents
```
db.collection.deleteMany({})
```

- delete collection
```
db.colllection.drop()
```

- delete datanase

```
db.dropDatabase()
```


