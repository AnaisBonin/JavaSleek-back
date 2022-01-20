const keywordRouter = require('express').Router();
const { findAll, findOneById, findOneByName } = require('../models/keyword');

keywordRouter.get('/', async (req, res) => {
  const [keyword] = await findAll();
  res.json(keyword);
});

keywordRouter.get('/:id', async (req, res) => {
  const [[keyword]] = await findOneById(req.params.id);
  res.json(keyword);
});

keywordRouter.get('/:name', async (req, res) => {
  const [[keyword]] = await findOneByName(req.params.id);
  res.json(keyword);
});

module.exports = keywordRouter;
