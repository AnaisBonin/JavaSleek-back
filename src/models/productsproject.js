/* eslint-disable comma-dangle */
/* eslint-disable implicit-arrow-linebreak */
const connexion = require('../connexion');

const findAll = () =>
  connexion
    .promise()
    .query(
      'SELECT * FROM products JOIN product_projet ON products.id = product_projet.productId JOIN projects on projectId = product_projet.projectId WHERE projects.id = 1'
    );

module.exports = {
  findAll,
};
