const pool = require('./database');

const datamapper = {
    getAllIncident: async (incidents) => {
        const query = {
            text:"SELECT * FROM attraction_with_incident"
        };
        return await pool.query(query);
    }
};

module.exports = datamapper;