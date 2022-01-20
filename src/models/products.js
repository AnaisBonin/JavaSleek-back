/* eslint-disable implicit-arrow-linebreak */
const connexion = require('../connexion');

const findAll = () => connexion.promise().query('SELECT * FROM products');

const findOneById = (id) =>
  connexion.promise().query('SELECT * FROM products WHERE id = ? ', [id]);

module.exports = {
  findAll,
  findOneById,
};
