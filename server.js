const express = require('express');
const app = express();
const path = require('path');
const port = process.env.PORT || 3000;

app.get('/', function (request, res) {
    res.sendFile(path.join(__dirname, '/index.html'));
});

app.listen(port, function () {
    console.log('Server running on port: ' + port)
});