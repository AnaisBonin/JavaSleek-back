/* eslint-disable implicit-arrow-linebreak */
const connexion = require('../connexion');

const findAll = () => connexion.promise().query('SELECT * FROM steps');

const findOneById = (id) =>
  connexion.promise().query('SELECT * FROM steps WHERE id = ? ', [id]);

module.exports = {
  findAll,
  findOneById,
};
