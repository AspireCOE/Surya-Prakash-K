function change() {
    document.getElementById("user").value = "";
    document.getElementById("pass").value = "";
    document.getElementById("email").value = "";
}

function back() {
    window.open("index.html", "_self");
    change();
}

function newUser() {
    window.open("addUser.html", "_self");
    change();
}


function addUser() {
    var email = document.getElementById("email").value;
    var username = document.getElementById("user").value;
    var password = document.getElementById("pass").value;

    // Check if any field is empty
    if (username === "" && password === "" && email === ""){
        alert("All the fields are Empty");
    }
    // Check if email is empty
    else if (email === ""){
        alert("The Email is Empty");
    }
    // Check if email is valid
    else if (!email.includes("@")) {
        alert("Invalid Email");
    }
    // Check if username is empty
    else if (username === ""){
        alert("The UserName is Empty");
    }
    // Check if username starts with a number
    else if (!isNaN(username.charAt(0))) {
        alert("Username must start with an alphabet");
    }
    // Check if password is empty
    else if (password === ""){
        alert("The Password is Empty");
    }
    // Check if password has less than 8 characters
    else if (password.length < 8){
        alert("Password must be at least 8 characters long");
    }
    else {
        var userData = {
            email: email,
            username: username,
            password: password
        };

        fetch('/add-user', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(userData)
        })
        .then(response => {
            if (!response.ok) {
                throw new Error('UserName or Email Already exist');
            }
            return response.json();
        })
        .then(data => {
            console.log(data.message);
            alert('User added successfully!');
        })
        .catch(error => {
            console.error('Error adding user:', error);
            alert("UserName or Email Already exist. Please choose a different Email Id or UserName.");
        });
        change();
    }
}


function check() {
    var us = document.getElementById("user").value;
    var pa = document.getElementById("pass").value;

    if(us === "" && pa === "" ){
        alert("The UserName and password is Empty");
    }
    else if(us === "" ){
        alert("The UserName is Empty");
    }
    else if(pa === ""){
        alert("The Password is Empty");
    }
    else{

    fetch('/login', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ username: us, password: pa })
    })
    .then(response => {
        if (response.ok) {
            window.open("Travel-in-India.html", "_self");
        } else {
            alert("Sorry, you have entered the wrong username or password.");
        }
    })
    .catch(error => console.error('Error during login:', error));
    change();
}
}