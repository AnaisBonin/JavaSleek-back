/* eslint-disable comma-dangle */
/* eslint-disable implicit-arrow-linebreak */
const connexion = require('../connexion');

const findAll = () =>
  connexion
    .promise()
    .query(
      'SELECT * FROM products JOIN products_projet on products.id = products_projet.products_id JOIN projects on projects.id = products_projet.projects_id WHERE projects.id = 1'
    );

module.exports = {
  findAll,
};
