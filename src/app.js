const express = require ("express");
const app = express ();
const routes = require ('./routes/tiendaRoutes');
const path = require("path");
const databaseConnection = require('../config/database');

databaseConnection.connect();

app.use(express.json());
app.use(express.urlencoded({extended:false}));

app.set("views",path.join(__dirname,"views"));
app.set("view engine","ejs");
app.use(express.static(path.join(__dirname,"public")));

app.use ('/tienda', routes); 

app.listen (3000, ()=>{
    console.log ("Server corriendo en el puerto 3000");
});
