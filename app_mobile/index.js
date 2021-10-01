require("dotenv").config({ path: __dirname + '/.env' });

const express = require("express");

const app = express();

app.use(express.json());

const router = require("./router.js");
app.use(router);

const PORT = process.env.PORT || 3000;
app.listen(PORT,()=>{
    console.log(`Votre serveur est démarré et prêt à répondre à tout requête sur le port http://localhost:${PORT}.`);
});
