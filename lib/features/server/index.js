//import pakages express
const express = require('express');
const mongoose = require('mongoose');

//import files
const authRouter = require('./routes/auth');

//INIT - initilizations 

//var not gonna change
const PORT = 3000;

const app = express();

//Mongoose DB website -> DB URL that i created
const DB = "mongodb+srv://tahir:bale11rm@cluster0.oh5qzwt.mongodb.net/?retryWrites=true&w=majority";



//Middle Ware  
//to specify the type of data
//Client (send data to ) -> Server -> Client 
app.use(express.json())
app.use(authRouter);

//Connections
mongoose.connect(DB)
    .then(() => {
        console.log('connect succesfully');
    })
    .catch((e) => {
        console.log(e);
    })

//localhost -> like IP address 127.1.0.0 
app.listen(PORT, "0.0.0.0", () => {
    console.log('hello' + PORT);
});