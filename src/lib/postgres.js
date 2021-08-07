const { Pool } = require('pg')
const { pgConfig } = require('../config')

const pool = new Pool(pgConfig)

const fetch = async (query, ...params) => {
    const client = pool.connect()
    try {
        const { rows: [row] } = await client.query(query, params.length ? params : null)
        return row
    } catch(error) {
        console.log(error);
    } finally {
        await client.release()
    }
}

const fetchAll = async (query, ...params) => {
    const client = pool.connect()
    try {
        const { rows } = await client.query(query, params.length ? params : null)
        return rows
    } catch(error) {
        console.log(error);
    } finally {
        await client.release()
    }
}

module.exports = {
    fetch, 
    fetchAll
}