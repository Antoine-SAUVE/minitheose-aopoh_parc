// Connexion à la bdd

const {Pool} = require('pg');

const pool = new Pool();

module.exports = pool;