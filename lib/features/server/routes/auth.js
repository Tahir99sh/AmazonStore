//import express
const { Route, Router, application } = require('express');
const express = require('express');
//import user schema
const User = require('../modules/user');
// bcrypt js -> encrypt the password
const bcryptjs = require('bcryptjs');

const authRouter = express.Router();

authRouter.post('/api/siginup', async(req, res) => {
    try {

        //get data from client
        const { name, email, password } = req.body;

        //find user with its properties (existinguser) -> using await 
        const existingUser = await User.findOne({ email });
        if (existingUser) {
            //return if user exists -> 200 status 
            return res
                .status(400)
                .json({ msg: 'user with email already exists' });
        }

        // hash the password 
        const hashedPassword = await bcryptjs.hash(password, 8);


        //user  -> object  for requird inputs
        // new user model 
        let user = new User({
            email,
            password: hashedPassword,
            name,
        })
        user = await user.save();
        res.json(user);


    } catch (e) {
        // 500 -> internal  server  error respond
        req.status(500)
    }

    //post data to DB

    // return data to user

})


module.exports = authRouter;