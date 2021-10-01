const datamapper = require('../datamapper');

const newIncidentController = {

    getNewIncident: function(req, res) {
        res.render('newIncident');
    },
    
    createIncident: async function (req, res){
        const form = req.body;
        console.log(form);
        // const updateResult = await datamapper.createIncident(form);
                
        // res.redirect('home');
    }
        
};


module.exports = newIncidentController;