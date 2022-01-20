const connection = require('../db-config');

const db = connection.promise();

const findAllProjects = () => db.query('SELECT * FROM projects');

const findOneProject = (id) => db.query('SELECT * FROM projects WHERE id=?', [id]);

module.exports = {
  findAllProjects,
  findOneProject,
};
