const datamapper = require('../datamapper');

const currentIncidentController = {
    getIncidentById: async function (req, res){
        const incidentId = parseInt(req.params.id, 10);

        const result = await datamapper.findIncidentById(incidentId);

        res.render('incident', {
            incidentById : result.rows[0]
        });    
    },

    modifyOneIncident: async function (req, res){
        const incidentId = parseInt(req.params.id, 10);
        const form = req.body;

        const updateResult = await datamapper.updateIncicent(incidentId, form);

        res.json(updateResult);
        // res.redirect('incident');
    }
};

module.exports = currentIncidentController;