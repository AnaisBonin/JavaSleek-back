const apiRouter = require('express').Router();
const productsRouter = require('./products');
const projectsRouter = require('./projects');
const keywordsRouter = require('./keywords');
const productsprojectRouter = require('./productproject');
const stepsRouter = require('./steps');

apiRouter.use('/products', productsRouter);
apiRouter.use('/projects', projectsRouter);
apiRouter.use('/keywords', keywordsRouter);
apiRouter.use('/products_project', productsprojectRouter);
apiRouter.use('/steps', stepsRouter);

module.exports = apiRouter;
