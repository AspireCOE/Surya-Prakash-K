const { MongoClient } = require('mongodb');

const uri = 'mongodb://localhost:27017';
const client = new MongoClient(uri, { useNewUrlParser: true, useUnifiedTopology: true });

async function connectToMongoDB() {
    try {
        await client.connect();
        console.log('Connected to MongoDB');

        
        const db = client.db('travel'); 
        const collection = db.collection('users'); 

        
        await insertDocument(collection, { name: 'Ram', age: 28 });
        await findDocuments(collection, { name: 'Ram' });
        await updateDocument(collection, { name: 'Ram' }, { age: 29 });
        await deleteDocument(collection, { name: 'Ram' });

        
        await runAggregationPipeline(collection);

    } catch (error) {
        console.error('Error connecting to MongoDB:', error);
    } finally {
        
        await client.close();
        console.log('Disconnected from MongoDB');
    }
}

connectToMongoDB();

// if we want to insert a new data this is a data operation i can do with this
async function insertDocument(collection, document) {
    try {
        const result = await collection.insertOne(document);
        console.log(`Document inserted with _id: ${result.insertedId}`);
    } catch (error) {
        console.error('Error inserting document:', error);
    }
}

// searching or reading or fetch a data operation i can do with this
async function findDocuments(collection, query) {
    try {
        const cursor = await collection.find(query);
        await cursor.forEach(doc => {
            console.log(doc);
        });
    } catch (error) {
        console.error('Error finding documents:', error);
    }
}


// once added and the updating the data i can do with this
async function updateDocument(collection, filter, update) {
    try {
        const result = await collection.updateOne(filter, { $set: update });
        console.log(`Updated ${result.modifiedCount} document(s)`);
    } catch (error) {
        console.error('Error updating document:', error);
    }
}


// once added and the data is not needed then the data i can delete with this
async function deleteDocument(collection, filter) {
    try {
        const result = await collection.deleteOne(filter);
        console.log(`Deleted ${result.deletedCount} document(s)`);
    } catch (error) {
        console.error('Error deleting document:', error);
    }
}

// aggregation pipeline to check 
async function runSimpleAggregationPipeline(collection) {
    try {
        const pipeline = [
            { $match: { age: { $gt: 25, $lt: 35 } } }
        ];

        const result = await collection.aggregate(pipeline).toArray();
        console.log('Aggregation Result:', result);
    } catch (error) {
        console.error('Error running aggregation pipeline:', error);
    }
}


await runSimpleAggregationPipeline(users);



