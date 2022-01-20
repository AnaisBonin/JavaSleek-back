const apiRouter = require('express').Router();
const productsRouter = require('./products');
const projectsRouter = require('./projects');

apiRouter.use('/products', productsRouter);
apiRouter.use('/projects', projectsRouter);

module.exports = apiRouter;
