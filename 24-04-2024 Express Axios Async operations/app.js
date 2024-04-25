const express = require('express');
const app = express();
const port = 3000;

app.use(express.json());

let users = [];

// GET all users
app.get('/users', (req, res) => {
    res.json(users);
});

// POST a new user
app.post('/users', (req, res) => {
    const newUser = req.body;
    users.push(newUser);
    res.status(201).json(newUser);
});

app.patch('/users/:userId', (req, res) => {
    const userId = req.params.userId;
    const updatedUserData = req.body;
    
    const userIndex = users.findIndex(user => user.id === userId);
    
  
    if (userIndex === -1) {
        return res.status(404).json({ error: "User not found" });
    }
    
 
    users[userIndex] = { ...users[userIndex], ...updatedUserData };
    
    res.json(users[userIndex]);
});


app.delete('/users', (req, res) => {
    users = [];
    res.sendStatus(204);
});

app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});