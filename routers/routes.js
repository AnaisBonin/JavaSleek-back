const baseRouter = require('./baseRouter');

const setupRoutes = (app) => {
  app.use(baseRouter);
};

module.exports = setupRoutes;
