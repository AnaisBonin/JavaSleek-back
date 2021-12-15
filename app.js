const cors = require('cors');
const express = require('express');
require('dotenv').config();

const app = express();
const port = process.env.PORT || 8000;

app.use(cors());

app.listen(port, () => {
  console.log(`Server run on ${port}`);
});
