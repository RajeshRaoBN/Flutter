// Import from packages
const express = require('express');
const mongoose = require('mongoose');

// Import from files
const authRouter = require('./routes/auth');

// Init
const app = express();
const PORT = process.env.PORT || 3000;
const DB = "mongodb+srv://yoda:bangalore11@cluster0.j3ycm.mongodb.net/usersDB?retryWrites=true&w=majority"

// middleware
app.use(express.json());
app.use(authRouter);

// connections
mongoose.connect(DB).then(() => {
    console.log('Connection Successful')
}).catch(e => {
    console.log(e);
});

data = 

app.get('/', (req, res) => {
    res.json({'Name' : "Rajesh"});
})

app.listen(PORT, "0.0.0.0", () => console.log(`The app is running on port ${PORT}`));