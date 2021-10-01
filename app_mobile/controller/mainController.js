const dataMapper = require("../datamaper");

const mainController = {
    init:async(req,res)=>{
     
        const result = await dataMapper.init(req.body);
        console.log(result.rows[0]);
        res.json(result.rows[0]);
    },



    events:async(req,res)=>{
        let result = await dataMapper.events();
        console.log(result.rows);

            
        res.json(result.rows);
    }
};

module.exports = mainController;