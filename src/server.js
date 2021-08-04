const express =  require('express')
const ejs =  require('ejs')
const path = require('path')
const { host, PORT } = require('./config.js')

const app = express()

// setting template engine
app.engine('html', ejs.renderFile)
app.set('view engine', 'html')
app.set('views', path.join(__dirname, 'views'))

// third-party and build-in middlewares
app.use( express.static(path.join(__dirname, 'public')) )
app.use( express.urlencoded({ extended: true }) )

// routes
const modules = require('./modules')
app.use(modules)

app.listen(PORT, console.log(`https://${host}:${PORT}`))