//import
require('dotenv').config()
require('express-async-errors')
const express = require('express')
const app = express()
const notFoundMiddleware = require('./middleware/not-found')
const errorMiddleware = require('./middleware/error-handler')
const connectDB = require('./db/connect')
const productsRouter = require('./routes/products')

//Middlewares
app.use(express.json())
app.use('/api/v1/products', productsRouter)
app.use(notFoundMiddleware)
app.use(errorMiddleware)

//PORT
const port = process.env.PORT || 3000

//starting the app
const start = async () => {
    try {
        await connectDB(process.env.MONGO_URI)
        app.listen(port, () => {
            console.log(`server is up and listen on port ${port}`)
        })
    } catch (error) {
        console.log(error)
    }
}

start()