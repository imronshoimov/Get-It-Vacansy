const { Pool } = require('pg')
const { pgConfig } = require('../config')

const pool = new Pool(pgConfig)

const fetch = async (query, ...params) => {
    const client = await pool.connect()
    try {
        const {rows: [row]} = await client.query(query, params.length ? params : null)
        return row
    } catch (error) {
        console.log(error)
    } finally {
        client.release()
    }
  }  
  
  const fetchAll = async (query, ...params) => {
    let client = await pool.connect()
    try {
      let { rows } = await client.query(query, params.length ? params : null) 
      return rows
    } catch (err) {
      console.log(err)
    } finally {
      client.release()
    }
  }

module.exports = {
    fetch, 
    fetchAll
}