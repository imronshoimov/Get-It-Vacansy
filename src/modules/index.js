const registerRouter = require('./register')
const loginRouter = require('./login')
const homeRouter = require('./home')
const mainRouter = require('./main')
const listRouter = require('./list')

module.exports = [
    registerRouter,
    loginRouter,
    homeRouter,
    mainRouter,
    listRouter
]