const datamapper = require('../datamapper');

const mainController = {
    home: async function (_, res){

        const result = await datamapper.getAllIncident();

        console.log(result);
        res.render('home', {
            incidents: result.rows
        });

    }
};

module.exports = mainController;