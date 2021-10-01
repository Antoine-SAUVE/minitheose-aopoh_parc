require("dotenv").config({ path: __dirname + '/.env' });

const express = require("express");
const app = express();

app.use(express.static("public"));

app.use(express.json());

const router = require("./app/router");
app.use(router);


//Moteur de rendu -> ejs
app.set('view engine', 'ejs');
app.set("views", __dirname + '/app/views');

const PORT = process.env.PORT || 3002;
app.listen(PORT,()=>{
    console.log(`Les Aopoh écoutent vos incidents sur http://localhost:${PORT}`);
});
