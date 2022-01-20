require('dotenv').config();
const express = require('express');
const apiRouter = require('./src/routers/api');

const app = express();
const port = process.env.PORT || 8000;

app.use('/api', apiRouter);

app.listen(port, () => {
  console.log(`Server run on ${port}`);
});
