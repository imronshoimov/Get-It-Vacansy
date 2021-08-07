const host = 'localhost'
const PORT = process.env.PORT || 2300

const pgConfig = {
    user: 'postgres',
    password: '7889',
    database: 'giv',
    host: 'localhost',
    port: 5432
}

module.exports = { host, PORT, pgConfig }
