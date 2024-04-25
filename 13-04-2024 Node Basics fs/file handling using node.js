const fs = require('fs');


const readFile = (filePath) => {
    try {
        return fs.readFileSync(filePath, 'utf8');
    } catch (err) {
        console.error('Error reading file:', err);
        return null;
    }
};


const writeFile = (filePath, data) => {
    fs.writeFile(filePath, data, 'utf8', (err) => {
        if (err) {
            console.error('Error writing file:', err);
        } else {
            console.log('File written successfully!');
        }
    });
};


const inputFile = 'input.txt';


const outputFile = 'output.txt';


const fileContent = readFile(inputFile);

if (fileContent) {
    
    const modifiedContent = fileContent.toUpperCase();

    
    writeFile(outputFile, modifiedContent);
} else {
    console.error('File content is null.');
}