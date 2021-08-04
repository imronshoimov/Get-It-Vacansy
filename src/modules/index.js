const registerRouter = require('./register')
const loginRouter = require('./login')
const homeRouter = require('./home')
const mainRouter = require('./main')

module.exports = [
    registerRouter,
    loginRouter,
    homeRouter,
    mainRouter
]