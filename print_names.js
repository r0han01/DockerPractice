const fs = require('fs'); // Require the filesystem module

// Read the names from the text file
fs.readFile('names.txt', 'utf8', (err, data) => {
    if (err) {
        console.error('Error reading file:', err);
        return;
    }

    // Split the file content by newlines and print each name
    const names = data.split('\n');
    console.log('Names from file:');
    names.forEach((name, index) => {
        console.log(`${index + 1}. ${name}`);
    });
});

