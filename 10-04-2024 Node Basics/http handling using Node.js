var http = require('http');

var server = http.createServer((request, response) => {
    if (request.url === "/") {
       
        response.write("<h1>Welcome to the demo of HTTP server</h1>");
        response.write("<h1>Landing on the home page</h1>");
    } else if (request.url === "/home") {
        
    }
    
    response.end();
});

server.listen(3000, () => {
    console.log('Server is running on http://localhost:3000');
});