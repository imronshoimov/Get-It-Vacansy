const express =  require('express')
const ejs =  require('ejs')
const cookies =  require('cookie-parser')
const path = require('path')
const { host, PORT } = require('./config.js')
const auth = require('./middlewares/middleware.js') 

const app = express()

// setting template engine
app.engine('html', ejs.renderFile)
app.set('view engine', 'html')
app.set('views', path.join(__dirname, 'views'))

// third-party and build-in middlewares
app.use( express.static(path.join(__dirname, 'public')) )
app.use( express.urlencoded({ extended: true }) )
app.use(cookies())
app.use(auth)

// routes
const modules = require('./modules')
app.use(modules)

app.listen(PORT, console.log(`https://${host}:${PORT}`))