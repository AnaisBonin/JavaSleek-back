/* eslint-disable implicit-arrow-linebreak */
const connexion = require('../connexion');

const findAll = () => connexion.promise().query('SELECT * FROM projects');

const findOneById = (id) =>
  connexion.promise().query('SELECT * FROM projects WHERE id = ? ', [id]);

module.exports = {
  findAll,
  findOneById,
};
