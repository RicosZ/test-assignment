const express = require('express');
const cors = require('cors');

const route = require('./src/routes/route');
const client = require('./src/config/dbpsg');
const bodyParser = require("body-parser");

const app = express();

app.use(cors());
app.use(bodyParser.json());

app.use('/product',route);


client.connect();

const PORT = 3000

//start server
const server = app.listen(PORT, () => {
    console.log(`server start at port ${PORT}`)
})