const { Pool } = require('pg')
const { pgConfig } = require('../config')

const pool = new Pool(pgConfig)

// const fetch = async (query, ...params) => {

// }