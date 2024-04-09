var database = [
	{
		username : "surya",
		password : "hello"
	}
	];
var us = ""
var pa = ""
function change(){
	document.getElementById("user").value =""
	document.getElementById("pass").value =""
}
function check(){
	var us = document.getElementById("user").value
	var pa = document.getElementById("pass").value
	if(database[0].username == us && database[0].password == pa ){
		window.open("index.html", "_self");
	}
	else{
		alert("Sorry, you have entered wrong username or password");
	}
}
