const { visitorId } = require("./controller/mainController");
const pool = require("./database");

const dataMapper = {
    init:async(ticket)=>{
        //selection des informations du visiteur en fonction de son numéro de ticket
        const query = {
            text:"SELECT visitorid, ticket_number, start_validity, end_validity FROM booking_for_visitor WHERE ticket_number= $1 ",
            values:[
                ticket.number
            ]
        };

        return await pool.query(query);
    },

    events:async()=>{
        //Requete pour chercher les incidents n'ayant pas de date de résolution (qui sont tjs en maintenance)
        const query = {
            text:"SELECT DISTINCT attractionid, name, open FROM booking_for_visitor ",
            values:[]
        };

        return await pool.query(query);
    },

    bookings:async(visitId)=>{
        const query = {
            text:"SELECT * FROM booking_for_visitor WHERE visitorid= $1 ",
            values:[
                visitId
            ]
        };

        return await pool.query(query);

    }
};

module.exports = dataMapper;