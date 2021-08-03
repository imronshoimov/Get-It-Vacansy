const express =  require('express')
const { host, PORT } = require('./config.js')

const app = express()

app.listen(PORT, console.log(`https://${host}:${PORT}`))