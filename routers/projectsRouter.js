const projectsRouter = require('express').Router();

const {
  findAllProjects,
  findOneProject,
} = require('../models/projectsModel');

projectsRouter.get('/', async (req, res) => {
  try {
    const [result] = await findAllProjects();

    if (!result.length) {
      return res.status(404).json({ message: 'No projects found' });
    }
    return res.json(result);
  } catch (err) {
    console.log(err);
    return res.status(500).json({ message: `An error occurred: ${err.message}` });
  }
});

projectsRouter.get('/:id', async (req, res) => {
  const { id } = req.params;
  const [[result]] = await findOneProject(id);
  return res.json(result);
});

module.exports = projectsRouter;
