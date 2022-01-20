const stepsRouter = require('express').Router();
const stepsModel = require('../models/projects');

stepsRouter.get('/', async (req, res) => {
  const [steps] = await stepsModel.findAll();
  res.json(steps);
});

stepsRouter.get('/:id', async (req, res) => {
  const [[steps]] = await stepsModel.findOneById(req.params.id);
  res.json(steps);
});

module.exports = stepsRouter;
