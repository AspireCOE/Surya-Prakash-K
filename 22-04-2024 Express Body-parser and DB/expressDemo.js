const express = require('express');
const bodyParser = require('body-parser');
const fs = require('fs');


const exp = express();


exp.use(bodyParser.urlencoded({ extended: false }));


exp.get('/', (req, res) => {
    res.sendFile(__dirname + '/index.html');
});


exp.post('/submit', (req, res) => {
    const { name, password, phone, email } = req.body;
    
    
    const jsonData = fs.readFileSync('db.json', 'utf8');

    
    let data = JSON.parse(jsonData);

    
    if (!Array.isArray(data)) {
        data = [];
    }

    
    data.push({ name, password, phone, email });

    
    const newData = JSON.stringify(data, null, 2);

    
    fs.writeFileSync('db.json', newData);

    
    res.send(`
        <h1>
            Data stored in Database succesfully
        </h1>
    `);
});



exp.listen(3008, () => {
    console.log(`Server is running`);
});