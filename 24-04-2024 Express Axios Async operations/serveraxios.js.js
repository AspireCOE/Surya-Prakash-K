const express = require('express');
const bodyParser = require('body-parser');

const axios=require('axios');
const app = express();
const port = 5000;


app.use(bodyParser.urlencoded({ extended: false }));
app.use(express.static('public'));
app.get('/', (req, res) => {
    res.sendFile(__dirname + '/index.html');
});
app.post('/submit', (req, res) => {
    const { id, username, password, mobile, email } = req.body;
    const userdata={
        id,
        username,
        password,
        mobile,
        email
    }
    
axios.post("http://localhost:3000/users",userdata)
.then(data=>
{
    res.send("user data saved success")
})
.catch(err=>
    console.log("error saving the data",err))
});

app.get("/getuser",(req,res)=>{

    axios.get("http://localhost:3000/users")
    .then(dbresponse=>
    {
        res.json(dbresponse.data)
    })
    .catch(err=>
    {
        console.log(err)
    })
})

app.post("/changePassword",(req,res)=>{
    const {id,password}=req.body;

    const newPasswordData = {
        password: password 
    };
 
    axios.patch(`http://localhost:3000/users/${id}`, newPasswordData)
    .then(dbresponse => {
        res.send("password updated");
    })
    .catch(err => res.send(`
    <h1>
        No UserId Found
    </h1>
`));

});

app.listen(port, () => {
    console.log(`Server is listening at http://localhost:${port}`);
});