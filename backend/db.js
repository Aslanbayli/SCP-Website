const Pool = require("pg").Pool;

const pool = new Pool ({
    user: "postgres",
    password: "1730",
    host: "localhost",
    port: 5432,
    database: "scp_website"
});

module.exports = pool;