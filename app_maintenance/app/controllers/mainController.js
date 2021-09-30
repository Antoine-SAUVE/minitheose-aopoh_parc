const datamapper = require('../datamapper');

const mainController = {
    home: async function (req, res, next){

        const res = await datamapper.getAllIncident();
        
        res.render('home', {
            res: incidents
        });
    }
};

module.exports = mainController;