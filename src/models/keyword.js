/* eslint-disable implicit-arrow-linebreak */
const connexion = require('../connexion');

const findAll = () => connexion.promise().query('SELECT * FROM keyword');

const findOneById = (id) =>
  connexion.promise().query('SELECT * FROM keyword WHERE id = ? ', [id]);

const findOneByName = (name) =>
  connexion.promise().query('SELECT * FROM keyword WHERE name = ?', [name]);

module.exports = {
  findAll,
  findOneById,
  findOneByName,
};
