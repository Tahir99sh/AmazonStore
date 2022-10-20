const mongoose = require('mongoose');

// 1- create User schema - name , pass . email ,address ,type 
const userSchema = mongoose.Schema({
    // properties of user type:string ...etc
    name: {
        required: true,
        type: String,
        trim: true //clean spacess

    },
    email: {
        required: true,
        type: String,
        trim: true,
        validate: { // if its matiching or there is .com or @
            validator: (value) => {
                //we use REG'S or regular expressions
                const re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                return value.match(re);
            },
            message: 'Please Enter a Valid Email Address'
        }
    },
    password: {
        required: true,
        type: String,
        validator: {
            validator: (value) => {

                return value.length > 6;
            },
            message: "Enter a long password"
        }
    },
    address: {
        type: String,
        default: '', //we dont have any address -> empthy string
    },
    type: { //user seller or admin -> but we have only admin nosellers
        type: String,
        default: "user",
    },
    // cart:{

    // }

});

// 2 -create the model
const User = mongoose.model('User', userSchema);


// 3- export  
module.exports = User;