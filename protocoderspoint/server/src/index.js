const express = require('express');
require('dotenv').config();
const connectDB = require('./config/dbConn');
const mongoose = require('mongoose');
const User = require('./model/user.model');
const userRouter = require('./routes/user.routes')


const Router = require('./routes');

const app = express();
app.use(express.json());
connectDB();

const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => {
    res.send('Hay! Hay! Hay! it is working');
});

app.use('/user', userRouter);

app.use('/api', Router);

mongoose.connection.once('open', () => {
    console.log('Connected to MongoDB');
    app.listen(PORT, () => console.log(`Server is listning on Port ${PORT}`))
});

mongoose.connection.on('error', err => {
    console.log(err);
});