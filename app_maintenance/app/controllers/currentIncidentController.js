const datamapper = require('../datamapper');

const currentIncidentController = {
    getIncidentById: async function (req, res){
        const incidentId = parseInt(req.params.id, 10);

        const result = await datamapper.findIncidentById(incidentId);

        res.render('incident', {
            incident : result.rows[0]
        });  
        // res.json(result.rows[0]);  
    },

    modifyOneIncident: async function (req, res){
        const incidentId = parseInt(req.params.id, 10);
        const form = req.body;
        console.log(form);
        const updateResult = await datamapper.updateIncident(req.params.id, form);
        
        
        res.redirect('/');
    }
};

module.exports = currentIncidentController;