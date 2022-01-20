/* eslint-disable implicit-arrow-linebreak */
const connexion = require('../connexion');

const findAll = () => connexion.promise().query('SELECT * FROM keywords');

const findOneById = (id) =>
  connexion.promise().query('SELECT * FROM keywords WHERE id = ? ', [id]);

const findOneByName = (name) =>
  connexion.promise().query('SELECT * FROM keywords WHERE name = ?', [name]);

module.exports = {
  findAll,
  findOneById,
  findOneByName,
};
