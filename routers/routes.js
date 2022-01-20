const baseRouter = require('./baseRouter');
const projectsRouter = require('./projectsRouter');

const setupRoutes = (app) => {
  app.use(baseRouter);
  app.use('/projects', projectsRouter);
};

module.exports = setupRoutes;
