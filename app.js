const cors = require('cors');
const express = require('express');
const connection = require('./src/connexion');
require('dotenv').config();

const apiRouter = require('./src/routers/api');

const app = express();
const port = process.env.PORT || 8000;

app.use(express.json());
app.use(cors());

connection.connect((err) => {
  if (err) {
    console.error(`error connecting: ${err.stack}`);
  } else {
    console.log(`connected to database with threadId :  ${connection.threadId}`);
  }
});

app.use('/api', apiRouter);

app.listen(port, () => {
  console.log(`Server run on ${port}`);
});
