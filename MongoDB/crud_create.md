# CRUD Operations

## CREATE

### insertOne()

```
db.collectionName.insertOne({field: "value"})
```

### insertMany ()

```
db.collectionName.insertMany([
[field: "value"},
{field: "value"}])
```

### insert()
- deprecated

```
db.collectionName.insert()
```

### mongoimport

```
mongoimport -d cars -c carsList --drop --jsonArray
```

### WriteConcern
Journal 
- Its like a TODO list for the database server
- if any problem occurs during performing db operations

```
db.collectionName.insertOne({field: "value"}, {writeConcern :{w:1, j: true, wtimeout: 200}})
```


