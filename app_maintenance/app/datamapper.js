const pool = require('./database');

const datamapper = {
    getAllIncident: async (incidents) => {
        const query = {
            text:"SELECT * FROM attraction_with_incident"
        };
        return await pool.query(query);
    },

    findIncidentById: async (incidentId, callback) => {
        const query = {
            text: "SELECT * FROM attraction_with_incident WHERE incidentid=$1",
            values:[incidentId]
        };
        return await pool.query(query, callback);
    },

    updateIncicent: async (updateId, form) => {
        const query = {
            text:`
                UPDATE attraction_with_incident 
                SET close_time=$1, description=$2 ,technician=$3, incident_date=$4, resolved_date=$5
                WHERE incidentId = $6;`,
            values: [close_time, description, technician, incident_date, resolved_date, updateId]
        };

        return await pool.query
    }
};

module.exports = datamapper;