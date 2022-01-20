const projectsRouter = require('express').Router();
const projectsModel = require('../models/projects');

projectsRouter.get('/', async (req, res) => {
  const [products] = await projectsModel.findAll();
  res.json(products);
});

projectsRouter.get('/:id', async (req, res) => {
  const [[products]] = await projectsModel.findOneById(req.params.id);
  res.json(products);
});

module.exports = projectsRouter;
