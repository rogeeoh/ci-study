const express = require('express')
const app = express()
const port = 5000
const version = 1;

app.get('/', (req, res) => {
    res.send(`express version ${version}`);
})

app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
})
