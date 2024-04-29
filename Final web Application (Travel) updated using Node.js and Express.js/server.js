const express = require('express');
const bodyParser = require('body-parser');
const fs = require('fs').promises; 
const app = express();
const port = 3000;

app.use(bodyParser.urlencoded({ extended: false }));
app.use(express.static('public'));
app.use(bodyParser.json());

app.post('/login', async (req, res) => {
    const { username, password } = req.body;

    try {
        const data = await fs.readFile('db.json', 'utf8');
        const users = JSON.parse(data || '[]');

        const validUser = users.some(user => (user.username === username && user.password === password));

        if (validUser) {
            res.sendStatus(200); 
        } else {
            res.sendStatus(401); 
        }
    } catch (error) {
        console.error('Error during login:', error);
        res.sendStatus(500); 
    }
});

app.post('/add-user', async (req, res) => {
    const { email, username, password } = req.body;

    try {
        const data = await fs.readFile('db.json', 'utf8');
        const users = JSON.parse(data || '[]');

        const exists = users.some(user => user.username === username );
        const eexists = users.some(user => user.email === email);
        if (exists) {
            return res.status(400).json({ error: "Username already exists. Please choose a different username." });
        }
        else if(eexists){
            return res.status(400).json({ error: "Email already exists. Please choose a different Email Id." });
        }

        users.push({ email, username, password });

        await fs.writeFile('db.json', JSON.stringify(users, null, 2), 'utf8');

        res.json({ message: 'User added successfully!' });
    } catch (error) {
        console.error('Error adding user:', error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
});

app.get('/', (req, res) => {
    res.sendFile(__dirname + '/index.html');
});

app.listen(port, () => {
    console.log(`Server is listening at http://localhost:${port}`);
});