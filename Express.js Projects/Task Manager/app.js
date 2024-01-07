const express = require('express');
const app = express();
const tasks = require('./routes/tasks');
const connectDB = require('./db/connect');
const notFound = require('./middleware/not-found')
const errorHandlerMiddleware = require('./middleware/error-handler')
require('dotenv').config()

//Middlewares
app.use(express.json());
app.use('/api/v1/tasks', tasks)
app.use(express.static('./public'))
app.use(notFound)
app.use(errorHandlerMiddleware)

//Listenning port
const port = process.env.PORT || 3000;

//Database connection
const start = async () => {
    try {
        await connectDB(process.env.CONNECTION_STRING)
        app.listen(port, console.log(`server is up and running on port ${port}`))
    } catch (error){
        console.log(error)
    }
}

//starting the program
start();