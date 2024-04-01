var database = [
{
	username : "surya",
	password : "hello"
}
];

var newsfeed = [
{
	username : "arun",
	timeline : "I am so tierd"
},
{
	username : "ram",
	timeline : "javascript is very easy"
}
];

var usernameprompt = prompt("Enter your username : ");
var passwordprompt = prompt("Enter your password : ");

function signin(user,pass) {
	if(user === database[0].username && pass === database[0].password){
	console.log(newsfeed);
} else {
	alert("Sorry, you have entered wrong username or password");
}
};
signin(usernameprompt,passwordprompt);