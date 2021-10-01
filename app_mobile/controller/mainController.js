const dataMapper = require("../datamaper");


const mainController = {

     visitorId : 1,

    init:async(req,res)=>{
     
        const result = await dataMapper.init(req.body);
        console.log(result.rows[0]);
        res.json(result.rows[0]);
        visitorId = (result.rows[0].visitorid);
        console.log('visitorData:'+visitorId)
    },



    events:async(req,res)=>{
        let result = await dataMapper.events();
        console.log(result.rows);     
        res.json(result.rows);
    },

    bookings:async(req,res)=>{
        let result = await dataMapper.bookings(visitorId);
        console.log(result.rows[0]);
        res.json(result.rows[0]);
    }
};

module.exports = mainController;