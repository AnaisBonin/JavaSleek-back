/* eslint-disable comma-dangle */
/* eslint-disable indent */
/* eslint-disable no-trailing-spaces */
const productprojetRouter = require('express').Router();

const productsprojetModel = require('../models/productsproject');

productprojetRouter.get('/', async (req, res) => {
  const [productsprojet] = await productsprojetModel.findAll();
  res.json(productsprojet);
});
productprojetRouter.get('/:name', async (req, res) => {
  const [[productsprojet]] = await productsprojetModel.findByOneKeyword(
    req.params.id
  );
  // eslint-disable-next-line indent
  // eslint-disable-next-line comma-dangle

  res.json(productsprojet);
});

module.exports = productprojetRouter;
