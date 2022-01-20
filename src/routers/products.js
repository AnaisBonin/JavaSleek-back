const productsRouter = require('express').Router();
const productsModel = require('../models/products');

productsRouter.get('/', async (req, res) => {
  const [products] = await productsModel.findAll();
  res.json(products);
});

productsRouter.get('/:id', async (req, res) => {
  const [[products]] = await productsModel.findOneById(req.params.id);
  res.json(products);
});

module.exports = productsRouter;
