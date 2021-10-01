const pool = require('./database');

const datamapper = {
    getAllIncident: async () => {
        const query = {
            text:"SELECT * FROM attraction_with_incident"
        };
        return await pool.query(query);
    },

    findIncidentById: async (incidentId) => {
        const query = {
            text: "SELECT * FROM attraction_with_incident WHERE incidentid=$1",
            values:[incidentId]
        };
        return await pool.query(query);
    },

    updateIncident: async (updateId, form) => {
        const query = {
            text:`
                UPDATE incident 
                SET description=$1 ,technician=$2, resolved_date=$3
                WHERE id = $4;`,
            values: [form.description, form.technician, form.resolved_date, updateId]
        };

        return await pool.query(query);
    },

    createIncident: async (insertId, form) => {
        const query = {
            text:`
                INSERT INTO incident (attraction_id, description, technician, incident_date)
                VALUES($1, $2, $3)`,
            values: [insertId, form.description, form.technician, form.resolved_date]
        };

        return await pool.query(query);
    }
};

module.exports = datamapper;