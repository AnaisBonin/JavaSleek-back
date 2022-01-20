const keywordsRouter = require('express').Router();
const { findAll, findOneById, findOneByName } = require('../models/keywords');

keywordsRouter.get('/', async (req, res) => {
  const [keyword] = await findAll();
  res.json(keyword);
});

keywordsRouter.get('/:id', async (req, res) => {
  const [[keyword]] = await findOneById(req.params.id);
  res.json(keyword);
});

keywordsRouter.get('/:name', async (req, res) => {
  const [[keyword]] = await findOneByName(req.params.id);
  res.json(keyword);
});

module.exports = keywordsRouter;
