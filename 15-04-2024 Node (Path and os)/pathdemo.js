var path = require('path');

var os = require("os");

var filename={dir:"\\dir2\\dir3\\", base:"text.txt"}

var exactpath = path.format(filename);
console.log(exactpath)

var xpath = path.join("test","dummy","basefile.txt")

console.log(xpath)

console.log(os.platform())

console.log(os.arch())

console.log(os.release())

