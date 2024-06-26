const express = require('express');

const app = express();

// Get the PORT environment variable
const port = process.env.PORT || 8080;

app.get('/', (req, res) => {
    res.send('Hello World!');
});

app.listen(port, () => {
    console.log('Listening on port 8080');
});


